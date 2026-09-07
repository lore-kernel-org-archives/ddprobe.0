Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D05623D297
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788820834; cv=none; b=HcHK2YQ5KAfZm92eN/aP60zaFo5JbtUGXO4G6YKHKwzTkYr47kcPFDyFd9ks703F08081ppKyJdPhBs4BvHzXZtUJ2nIj36xVTRvcM6gRQSK+vaA5BEIxPt8SyipqHxK7jTMXhjGysyts8Um+hpNguakkQ3CEv+gqWmbaF/DOXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788820834; c=relaxed/simple;
	bh=zAOm9/CpNv+C4KO8uFlSVNva3qXQIklFcA3wX7ldjYc=;
	h=To:Subject:From:Message-Id:Date; b=I+8juEtZt82FfplFwD5Mtp6J+3SnMrmmWryqYAaQqQ59+bf6rJsSeMCXDu+MHfCJOlCsMbv0V9vs6arJqQAO530XlHV+42ZxcKJXZCx3JM/LVkYc6H/N084eDiSwwLgaI74k7ThEz63gUvjOrZp/cwDU4Y0fuDulO/zp0DiSTNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hx6d7p5P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hx6d7p5P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7424C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788820833;
	bh=zAOm9/CpNv+C4KO8uFlSVNva3qXQIklFcA3wX7ldjYc=;
	h=To:Subject:From:Date:From;
	b=Hx6d7p5PoCTMQ4Xp42/5FHK4d6lgUBymhP4V6WX2Pgrl4k5T0BNnZrUY3uL0VPRSu
	 jR9EqV8Q/08brFx2YCShDzAOOAMvCpjs1HumfhggbYGRPv/AfsNEIG69Tl9V1Kl1Yg
	 l8n+0p6pzz6WqH5GIy2dAzHoiyg5X1j1CcuU9Q031jKHyPXSODGEk8oX+iF4HHVA9b
	 UKoD976fak9A3FA3vyt21kMBn1KMCE5zrM6OVf44YDpoqECa3izl8pACr6NI5gWS1w
	 q6mD73GHf2B6Yg4R3Ft477y9Q9TxM1sc9H2MRL4rJACheg85xeW9Ub6sr2EsQrpY5n
	 99AaQBO3zuHmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13F9C79F99
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178882083370.20241.11436240986484899285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79e990642b200b403ad484c88e003212703764fe969aa0f25b112d578919447e
Date: Mon, 07 Sep 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788820833

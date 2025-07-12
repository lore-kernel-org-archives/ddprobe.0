Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ACA91FBEB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752311994; cv=none; b=KIfrRoisyOXD2c6gVr+HZa5bpuP7gU1oA4NMNXgSDvjHqdWtWt5xmmEIAXyPHJS3F2MLUpHBRywoOFmYRHus/1s40Siybpv3fCbsHHliIlZtygvcXjvrP9dozzyArPLFJjyYJN2HySPPlXZxOV1myrRLnjLuIxhUWz/5cJmFQrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752311994; c=relaxed/simple;
	bh=MxJNdkQ7t4Z/FW39u0QRvAp1Gd+1CBIi+zexz+WsdFE=;
	h=To:Subject:From:Message-Id:Date; b=d5vAvpguWz2w5dRqvL01qwJgKDdS5jOhzEeIRr7JSaQ93y6z+8FOGfOkC113qZt/axktMhz1wlKPBOOuZRSWVdrWScLPU01NiuMgZ/TsVABgUPoGjcjbLad+jj0UkY3wX9nWHYTl4aEE0BvNW88G3wdVWGHdQ6spTujrZvylOuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RAbBuwuK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RAbBuwuK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BE16C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752311993;
	bh=MxJNdkQ7t4Z/FW39u0QRvAp1Gd+1CBIi+zexz+WsdFE=;
	h=To:Subject:From:Date:From;
	b=RAbBuwuKe71lGMH96RoiTTETLj4T9bO4m7UKU09ZkASr5tUMgs+Asm3P9c6VbHnGy
	 jq24K57DOceZbjecnOQyTcNboVh3NGjNfaqbN1esCu/Q5CQVpIV2eLyzsSNvPbu8lB
	 IIOXG2D+PF4IqssT9G1K1koqOpg1ly4ypG37bL3qgciMqNbYRjZdnwFvCD3JEGbYmy
	 8boDk31i26QRO6O+L+MnwtIDaazrBNQRpcNdtyAkAb/FbAcgDtbSsPtpanKxFyxOsZ
	 eMG/t2ofKrtVFLJzW0KHLGqeUktI+7DnMrzqGhcN/4vgV/oltpeTc0K/xkDo8QHj5l
	 3iWZghv8g1rRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5A4C83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175231199357.790.11881716612629914511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7953c27051142f90173338023a595d66ddb58cae9378867b553644bda86b558
Date: Sat, 12 Jul 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752311993

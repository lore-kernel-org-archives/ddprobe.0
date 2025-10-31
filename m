Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7CD331A6C
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761902994; cv=none; b=M0xo+CMOFilyQIQ19G+Hxc3oNY9WkDuj535mjFyv3Rq8xfEY2Kqf+TD9Vn+3CVzGRMu26Gt1WzeO+GizzWPoefQCY2KTigiN88xdF2VOgTwPvXyz7YcChsgIAAKWV268ALk0fYmbg9ouEw9Yu/s2LnVGlLaXPtY3xMy3CM+vXkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761902994; c=relaxed/simple;
	bh=/Bt9Z2FxRBd5VTQNSvvtlWnJ5DhMU4AiEUq3an5dLEs=;
	h=To:Subject:From:Message-Id:Date; b=Z24IPpF6BlYk7jWKWbgtmTFrTycCQjKf2J1EaWrA/nuhrKsEUPfOySdqkwy/c9NhIa8S84rRC4csUsusiVlFFH8m2Q2o1kuI0It6gLIK1zfNq6dDicuaU5p3YC6WcGQlLYo2LQDPa1cb4MD72BfbF5kqRNhiKJhIBGrDxAYjuXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gtNQoz6t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gtNQoz6t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABED1C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761902993;
	bh=/Bt9Z2FxRBd5VTQNSvvtlWnJ5DhMU4AiEUq3an5dLEs=;
	h=To:Subject:From:Date:From;
	b=gtNQoz6tj8JPGc6Kztg1Yyq6qRIP6hq2W9ldqxFNCdIWuTM6khUXIqz7jLaZgRaDz
	 T9een+gfvJWGUlyHBk2nkF2WENEP8SKJ7DTCNIHp8xbVg0wmK5W1luZBqsFVEkJR48
	 ZYkWQcMlUVWH3vB7Z/lqcAaAQ73obA6ywIO7YZfrPCuklq1S0K9SRnZwh6BPuG5jSz
	 4zzQlQtSvZKcHufE9V/JYJcOKcTc1sa8kdsTEwxmP870c92zSp86PSXkrVn0khX7DY
	 Vk45D+BALD0BViUonu1hcBRM5WFPrF3FdRzw8F+KKbw/ufLBE5vJvLgKksiYujwQfr
	 nWTCSPBvdozlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC76CCF9FA
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176190299363.22187.14008884664077667408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d956630acb1540705b7d046701008d6b48c754c9acfea841640626a48562c8ee
Date: Fri, 31 Oct 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761902993

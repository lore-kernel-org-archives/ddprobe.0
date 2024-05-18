Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1201094E
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 12:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716033743; cv=none; b=AoIhcrrEO+iWvk02PBGoSgBiwlkHVpW0RHfaa60USvUGUn7pSG2tMaLMP44/VViIZgN4cT7cgpWumbX9dqKK7gJ6i1UVYLhk3eml0Zd12lPr4LkDw8skD6Z9ETMo2NzzhiHhDzLJkgdyKJ3SK4a/5Sb6vQedA/e6gJ2KMkLEH64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716033743; c=relaxed/simple;
	bh=1t4LaUmTtlYUZShehuKus+UDlO+PZ8B1E3QQEkfv1mc=;
	h=To:Subject:From:Message-Id:Date; b=Wh9h+t3ndZS48dt37dcyYFm/TipIWMQZm+NENLTwSD+U3kvlNGLoy/d2o0++pjA3iF1Gza7plt5pFPwyAGGIZLLxJTSGPUdMq/B5DUbWxQ8F8c9qx0LvVDl0ogocWcC+Y23UMlHoSkdavtpxL/o4Qi59P71m195pUA8At90fUVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KP+Izv6B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KP+Izv6B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8228C113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 12:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716033742;
	bh=1t4LaUmTtlYUZShehuKus+UDlO+PZ8B1E3QQEkfv1mc=;
	h=To:Subject:From:Date:From;
	b=KP+Izv6Bg634ROIHYin2QKJjse5h+F977IvQiFtT+uo9kADR2iLBkN4NlD6h1w721
	 ZKurOzmT7umdE+Z1v8Cs54L7w5WxqpoZbrrF7VGSFB78Z87etIqHpnNxipUHiV5vLw
	 hDutO4kqp6LDwq7DtUIrJ65VP91mEnsvcD5FL33JB2nPY8E8+fdq25N+f3BgpMONfS
	 RqXByomf8TF8oVQUqpPAfMwbYQkkxmKGuqvpzI8fY9qMIoyDFDrCg21H6mGk+pQfyK
	 C2hUOCUy6XuTvF4k+wmGfFMjRY3Gy32fFV5b8Gr0MKqOg2TiOXTBthoXd+Pz06uXYC
	 1JwuGDsPw5bEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5E56C25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 12:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171603374276.8833.16404229752351909942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 979d4d6354dc0fbbbb605d3d6d748ece3ca9569b29eacc46182a972e6e333b72
Date: Sat, 18 May 2024 12:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716033742

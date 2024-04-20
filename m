Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D68C205E00
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 19:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713640823; cv=none; b=JYZS//lCwmEIbVTuTBwfkgV/Ewaq0X1a4SmIVvIKIaxRstHgz5+/9e4K3vPTXifsmSx6TCnVbhWDnYYdbbAi3GQ1jbYIj/AZ5Tk4Z4mghpufqdmREx3WfPdXZj22tcvoDuev1gEutCcXn1F9rktAoQdN8N4xTtouSXn66HUc6eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713640823; c=relaxed/simple;
	bh=EMOwXHT4LbzsaaGgbmkfgQdw/eaziPSo2y5xC7uqk10=;
	h=To:Subject:From:Message-Id:Date; b=Htz9Z6GIFb+sCZL+s5cNXHihdkN8jbMTRQ89UNTulu2Q/X1bIICytPxpTIvvyddh2/dQm+nIbsZCyLrWzxe0KOPJxLY4ruiWS3sP4/MH9AXAMZKy5o12HevBXJeOmeYZjlz2JTmuT1ZIDO0Vtqlwaxw5gq3I4W0VkoB96rF+ves=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pFo8s8xM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pFo8s8xM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08E9AC072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 19:20:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713640823;
	bh=EMOwXHT4LbzsaaGgbmkfgQdw/eaziPSo2y5xC7uqk10=;
	h=To:Subject:From:Date:From;
	b=pFo8s8xMKgqzXcA5LT5VGDe/7bNL6bhzre9jzAsCVDtUa5xXV9JNOIkq6PYQIb9Rl
	 T5Jx/Cbsuu8L1Nk9X6Y45yPKyyj1NVL1M1d095vvfeXmD+Oesk3DoC7mwR25rUSm60
	 usutJIA0Tk2vtHkE6Od1D11nOVAB9LSN4SNg7gUSqUQey7miO0J+jogE2qzttGRKeR
	 t8UnMrMnK0ZBGbErRWENdxHtC6AO27YR6uZFOOFjdxjA6UOOgB6p3jA0ZxeVHcb2UQ
	 S/IVXVssgNMpSF1iQ7JomYITOUTiTCAeCno1R7Di/VSa1y2xr8xYwAny78CSLaP/kR
	 kXJ10qwzEhfhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4988C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 19:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171364082281.4728.10922677073413574944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ddcea6fdb3bedda46160e24822eb4fc04223378dcd74dbae2c78fc11e10ee3f
Date: Sat, 20 Apr 2024 19:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713640822

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8C8385268
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 18:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708539497; cv=none; b=q5ZdlwQmj4thzqG7eAh8VmA86K2kCI+u6jU7FvXne5NApKGe7w8kMaYZF466i0m/7wHRaBQCICaaTnvuxJDCK9dxlVdKrmp7QHfdKNdghuXBSM32VUA3Zo6tPRwjf70uch3Zknb1Ng9EonaRud2XHQIytsZci1VrYOBbMVpN3i0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708539497; c=relaxed/simple;
	bh=rgAPshgLFQj4Z1888p9VB8I3U/ReoWf6L3kNHgTUUp8=;
	h=To:Subject:From:Message-Id:Date; b=QtNyIU9B7aZZ96pYmrd2rqGXVMvWXiwqtpec6cyVovKC70N6mGbI18yMSzKbhnC+9R+BSG9N2n0nL8eYtZ7+e4k72G0bs2b0KKywUV7SzZgbMlNz4BBD3SHCqq1JZAGBxbm20pGLhSud/dEeHOi0nUQRGpDFM7UM5Gohv6ufgks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XOQGgXVT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XOQGgXVT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76A7AC43390
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 18:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708539496;
	bh=rgAPshgLFQj4Z1888p9VB8I3U/ReoWf6L3kNHgTUUp8=;
	h=To:Subject:From:Date:From;
	b=XOQGgXVT9ZOcoj+QeHCrqLVFuRkqWrnSHwdlU8VZylDJE6wk2lMxhKaMJM+O7OBdl
	 hjzquXRiju8Jj1fjNTq/aID0vDcusdkLd1bLmdhEQq1orIZ+CWczqUK8/0dfVdcNmh
	 w5gJnKjlaRyZjkbeKyYmsh6XoQqY/QXtVdPXTohLcn6oi7RplmJZAMP6b+dWyUVPSn
	 lEmK9VhGpPYATpPIKUC2knkz2HJdAt0AQx04tqM0G5WeK+sUNs8zBcvJC8TtC8JHAd
	 WxGuNOp6derM6S82SWbIyocyeNLimEz2hvX6dWzRJB/MOfRtmC/TJ+Ka1WxB4JnMd6
	 nf0MT+slvnSwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F7F0C48BEB
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 18:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170853949638.10450.9344546407827231318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84f9f73a948ed9a88c4a692b54aec9cb7cd6fd227598336df9184b7ba4ab66ab
Date: Wed, 21 Feb 2024 18:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708539496

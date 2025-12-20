Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 131823B19F
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 03:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766200434; cv=none; b=WmSBCQEkycB0HerHTp6eFbwYd017bS4T5INr2SG5HsPV05SAnyr6qGNGTHDGQGKpwzwYvZ3/xrFtDIyvu+a4a7uksR4IaovkgKI3BN2DnZlOmQAg5EjfOepX8Q7/Y4fvTUiRO2g5pWElwXRhSQg9EqTDWb2HWBPq8yMxBBPFH5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766200434; c=relaxed/simple;
	bh=bnKItHPvWajJJfemCfTnsaLmB4Md9i6GgNkoEXb69rM=;
	h=To:Subject:From:Message-Id:Date; b=l34sSl9NyXHWHybm+y2rhy9eqG731bopqr47pJPIoxIuB5/twpWwYYtqwJT5kXveLlwcyCK8TuBkmznLn2kEU1lDILGzhGYtXbShDNQodx5F+bg6TULwVe83kKOim+9xNg4FzLkWKzUcoylzXJzu7MspQ+422W88gIrXkMsMxfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CYTNej60; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CYTNej60"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C2BC116C6
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766200433;
	bh=bnKItHPvWajJJfemCfTnsaLmB4Md9i6GgNkoEXb69rM=;
	h=To:Subject:From:Date:From;
	b=CYTNej60x+jCluD6EGZkNQq9GVmNmXm7EkQEkq2c8GJTcd/72xGd342ZOka1IAbJr
	 1P+RayPoQ+c/8OvH95wCoxu8YreCfAIeN9kdIUlnsbDocL1OuTUHDuqSDIniWOii1h
	 7qacNXwVSQWIJFpuYrwK7a0qazY3Ua7x4Oj1TKmzB/vlwtqkTNtnvoI1APjUyKdv9g
	 AunQVwimvrVW4vS4l1V2H1+M8bzX+ynUgI67GQUWI7Sy9lYSnYcqk215uSO39i7Xf1
	 o4vtgcRxhG8HYa2/9IjQPjDk/40wQJI8GVUnPW4c4S8H1kJugMHvA8Rn2v7EsOP8Kn
	 npVT023oYDw7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92ADEE668AF
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176620043358.20874.14603948237663973407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ae382889bcbe92cb8dec3d6dfdcf9f2872d369feef42fd718944e658480918a
Date: Sat, 20 Dec 2025 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766200433

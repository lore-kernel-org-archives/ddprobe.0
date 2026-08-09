Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EA2C2E737F
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786243234; cv=none; b=hjiznzgMC9/CX7ojY8+047nL4vy5d7sFsik0DDfhl+Hz68eL0r+663Aw4oX1ZvGBBqeb8zf4Kj1PCGOGLyF2KLCTFxevbpMme8ckGLxA/gFDISeYZ0At6mJOCFNrxaj65H2LOu8uWNvMg8Cy+22S7UhObj9SCAlruCsJchcBDo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786243234; c=relaxed/simple;
	bh=QdYvcc5bZlD2+BIesiiRuJ/FeJ3Ys+B4K3fp+tCnamg=;
	h=To:Subject:From:Message-Id:Date; b=c2tSSqCXUx9HxD1dnxylNxyE4JRUiQH1cTIFogDAnUlZNrLMSmr0e6QEiJx6ZtTyYrqQNXvRFhnlLDmY13YMZyeBxRv3pG8CuY9HWHhqmUfM1hSqLuwclbs+xHhgDJkN3TVABLqEBLeQkzQeDvGdx1RcuVeI/1I8NpW1ptXHM60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nHql8/K/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nHql8/K/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E63C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786243233;
	bh=QdYvcc5bZlD2+BIesiiRuJ/FeJ3Ys+B4K3fp+tCnamg=;
	h=To:Subject:From:Date:From;
	b=nHql8/K/2ltQEIOCNTMh68Mf6wfS+Sw9okgkOil+88Fgi8yrCMwSyzTeuw9t7eOOL
	 s6DMABDPqknsQjHmq1jiiksXgUml5rgyB511RaobmmP2Jr3IswcO9YD+cDqdm6L8Zq
	 cMXDYioNBnXm1MYNqr0ysaYltjcvGQzZv5PfHVza1Iy4aWhakypZzD4GSPGGVC10wF
	 hqG+VEbskPF33+wihbsGAJWG7YVRKlxhOJwBjnd49nE7L0baut6QMxRxFTsAR8ybx1
	 ro8zcl2Ii+Jt0rAuWWGaUhBjkYHXLPfFj/+xMMb8FMSF7F8UEC0AEJu3yHCBDoIh/b
	 FfGDK7wwYQv4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F09C5AC67
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178624323368.14947.9929094833331635722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee0ee112ffba3f2760745f59ab6b698762bae6da3f6b7a9a3562216498639bec
Date: Sun, 09 Aug 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786243233

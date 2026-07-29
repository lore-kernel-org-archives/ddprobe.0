Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A927F48EBF5
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 13:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785333035; cv=none; b=KjnKvwYEL++tJBBs3HJIGNSFngzU5vMZo8gOx5xlo3DqsLWGQtqAUvtzbS8v2cDy516U1hIP2RAp/Zs69a6+UC3VOv8HPGXX58W2ilr32VIxuJhNYeEnnC7Ls+hLbbeISE4rHJ7NRO3jjegOFCYNAwgUjYBMekXct1qayGTWs/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785333035; c=relaxed/simple;
	bh=DrFm5IsudFHkKx4rQ1eMYpCML50/6AR2p25e2EYO9oE=;
	h=To:Subject:From:Message-Id:Date; b=WhyIidi50+aJba0MsNbaGrfG+zuL9RRweYR2gK5m9gPXZuOum2p9UV3BhTIeYwq5oB+ZoI2KDTV30S3SSu9/AVTN5TORk2DaUkUwJjZMKTQCz04Gd6HenpE3a9ctGZ3eESUGD8CvWkxAyJhRHDkRtj6OPi7cCfjUSOt3B+qD/tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XVYXhO0T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XVYXhO0T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF2AAC2BCFA
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785333033;
	bh=DrFm5IsudFHkKx4rQ1eMYpCML50/6AR2p25e2EYO9oE=;
	h=To:Subject:From:Date:From;
	b=XVYXhO0T3dBVDXHV4naSaPTH+qzd1fGGwL7SLED3PFy/c0pcdQnOPlJgV7KOSZ9/P
	 xoG1upcyYYGEa0jB/MB8WUNB5pEo/yWc00jxVTHz3i6sibL7wBn1JYgjzJhB6HzyHP
	 2v0k0CsWaWndBW85NacyGpxM58MEFfETxcQAuZRFI3dQFEDLFCDqlWQyLEtdYDt30H
	 /eJTEov7KU8xVZ7FQCv3C/fJMGGiRddHMJmfrI97OJhFDp1N0Mj6ptnk9Z7hXg2IP3
	 5am16sxR6dKwGNjbcyuYclhniHDH669XqdvD6QGJYzPvotSLVMlebRsHNAFFOgaA+c
	 UFi5JoGkKxQng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BEDC54F51
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178533303368.8837.9515832865657568189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 358fc339131a8771dddeb75a36cefc328d249fe003bb6558ab0a49abb481acee
Date: Wed, 29 Jul 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785333033

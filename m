Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3379941AAC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755425994; cv=none; b=D4bf8+dJs2OHOkMyxNAWlzRhb8lii85MCvjbNHRcBinK/WG4xE7DUS09q3zio0ZNSEYyPQlhPF4LfEdNYIhX/HVOPXwSyMdscBSg7YzqccDQJhtXq4Kh8ROsqdxH+0p2Gy/Mde3WaIRiDB/A2HrkwQdeRd0LGuZsW8VT0MmDY4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755425994; c=relaxed/simple;
	bh=UFtlYkY+8Mg0frDObPxAB9V4Cfp4QE/Mbr5oVXdYlhc=;
	h=To:Subject:From:Message-Id:Date; b=OdN3ogWYpqrA8ln3B+OUQ3km5RSqOHHvgEObszbw212lZfDEiExSGkEVGubCuetduZEJ4thJe/w/fW80x3DqjJpxZkq3YPzTG8HF58+IjwFRZOaa0z3+PxCKPIenD49W2tuzBVunWgCOktqEubPOITEJnldKczj4k5RGwmSF1pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vCW+RtEo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vCW+RtEo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AEDC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755425993;
	bh=UFtlYkY+8Mg0frDObPxAB9V4Cfp4QE/Mbr5oVXdYlhc=;
	h=To:Subject:From:Date:From;
	b=vCW+RtEoaR2tya0ZKujTy0AwmfP0z2ztlqJDlst0ukQh2aLFoM0Uae9tXBFQbtHVQ
	 FOKwY6sqWNyoafzL5YuPmVXgLa6xl0BQwrvBpqsIxC/p3YKsLdJ/gnAb2TmW7HyJJf
	 uhQZl8sObIMWSH/80il4SBWNmXWAbydb8Xy+ootEa8Hm2z2WENIt5dN0F7B9xZ64sp
	 NTGl4WALRz0JrnRDv+GSVm+0wq0ENW41IcixeKsTO5EGbTikZsK/Ug6xXGpPXXwZJD
	 f6U6CtN4mVRb4khGRxDqpVKFD3MYyuDCE/YIP0qR7vypqK10lmKee333usi7SHOTAF
	 pV2BDpgpZyM4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915A1CA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175542599357.28761.6370418936111654797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d134dbacdadb37e338be703319070f899a28958a656d231e5daa308cd7249f4
Date: Sun, 17 Aug 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755425993

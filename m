Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E3A5478D
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 23:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774652694; cv=none; b=DVlBomwfvquUFlLDsxgc56cDaF+IdVAyYh8c9Z+DvdXVLiY7+KpbWdHpkm4cOW9pGci7xKwJnYFXDlRvd0dq4+b/2f/LJDR53m20DFtYpzaKdtjs785KgJ1a5PoxVgJ1Dq3wMvRzzFz5gLEQmpZcPi+vNkyaqHmRmktVvJ5fub0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774652694; c=relaxed/simple;
	bh=XXLMBtf0PdMLgx7haTmW22Ho90nnP9knzbUpTVfZ0MM=;
	h=To:Subject:From:Message-Id:Date; b=BC/ec392Azf3aFum+G9KyPSvM1etaFN8D3mKG32V/gPMdG/mQGSWUDUy9KmBJD97YmS9xr9I2gvMDOgHyvXbJXOR5XazQobvQedr7pfqMU1Y97rC9VDNqDzakYRc/iO54cJD/c26KlBXFf6UsXWqbX0Glbnu9Zs+cg7Qrb5V4jM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YDuqJl0j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YDuqJl0j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4461C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 23:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774652693;
	bh=XXLMBtf0PdMLgx7haTmW22Ho90nnP9knzbUpTVfZ0MM=;
	h=To:Subject:From:Date:From;
	b=YDuqJl0j7JGiv8Co6jRJABRmv3v4EIoQWitkWtOctZ1yLha6VxytFBiOFTeJ8x5ak
	 mZTjS7E6VLtIMWxanoqZKgOqlJwTxxgUsjq7GfvDxaQAo4CJ4b53bqpTl+T5+s1zWO
	 MmZM4AjQmze3x49bFiI0m/GHcilgZ29QalyDUgPD2BA+zKpeQAYIHdfRMypgdjaqz1
	 baeAz0bvphTxhIFCzvi70ILWnhd5blL7SZLGt0hdMKUwET9XrHZN13oFya2+yeXGKr
	 +4yvCyH1O7GzVfOPDusvrMaHjCi75h6B7JcUebToV7o9mPDjvGG7ezc/RBo7nvkoYc
	 aRRYctOvhJCJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910E510F2875
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 23:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177465269358.6889.12241985742943163939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a125b3ede3330d077edda2e123eaaf5a67cea28a8ee24a269cf644361f292c01
Date: Fri, 27 Mar 2026 23:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774652693

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC334E73BE
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791976834; cv=none; b=Is0kHvPK/sitBB/6aUlr/kUXKyPT2359wTBWngjNG3W2i+rMQKYzAWiuFb9J3Qp75upIZ9nKim+JA5JfHMoEShkVlJSWIcJfCzmZUmU7++9StrefPW+5cIm0+TBaKKWl4MsxPP8WDYa5g1sSTN6KzJ/LITum9/ul2N9zGrmtj+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791976834; c=relaxed/simple;
	bh=fzCXMbhKtoAzevj5dGv+NxneQk1vxvcowAli2V6mAuQ=;
	h=To:Subject:From:Message-Id:Date; b=IrDxvjmDuKj8e05uvUIonvbkf9+pWWpC4buVK6B83LzWKz5pBqY6egnRR/48LpuOA69LBgyDeQ4PBqGV2nG0fos/7L/J5BeTNeQspj2aaGsVHj05Gh9WVnG5PAf79vHAoOtX0wL0oicMnEu6HSQ1Sd8ddzyri9obZHGBQOeF2s0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uAkS/VTb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uAkS/VTb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E0BC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791976833;
	bh=fzCXMbhKtoAzevj5dGv+NxneQk1vxvcowAli2V6mAuQ=;
	h=To:Subject:From:Date:From;
	b=uAkS/VTbwJL+5fjcSq8YK0lGDiO/nc1BoKAyLrT5JLgjcsG3bXZgt0CFQDaxBxiv8
	 f7cZlu//Kb2NSBRJ9Hap/Mx8ELCcNolzD+yMIHqZFgL9XhgPIE1lWr5Athk324sUnP
	 0YzdXnPzthFI4HulcTHeJ39pMlThulHlWgFvCuw8xTctFMQQH7bpXr6dG5+PLESetC
	 zC+rdru+nfvS6b3TkAAQ/2hKSI0rP3T6vyIkjW4IVPKCgbt7O0HKgT+L7X56CtdDwH
	 zU1/3pGjdKPAPi4uUJ9DYDwDrH3lMqsG3fGADtNie8nG3jQr/HDwAkltLpwpfbwPBz
	 vPabg4iG5Xw2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0750CC6B1D
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179197683370.16035.6114170067510507228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6141521c4b7875137959d1f24094cdddbcfa30633980ac1111d95a7b4b3b707b
Date: Wed, 14 Oct 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791976833

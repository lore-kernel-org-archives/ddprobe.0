Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3F2C2AF03
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758496793; cv=none; b=hPYFgHeIIhJypS9QDtYPEF98WHdiPWsWsj0Yz6KQc9jA/U6y3kZUKMCWzsL4uocxp2X0ZwMDwdiRiVAw3FQBKOT2B1k+cipzdegTJYgkg6H+1PzfDx8LwUf6txFjINkDrSIcire6RYojSBjLtjI6ppEAzwY9vwkwnr/H/ptaffc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758496793; c=relaxed/simple;
	bh=O/Fn66kQc+NhqmBwy0+7z8YZn0F88yOITf1TU3J1rK8=;
	h=To:Subject:From:Message-Id:Date; b=q4MQkohc2eaYhlt2x9eajQi7zTL3eRDMYnrz/eB2/N4YNV5lALCvSBO3De6nf9UAcLwlha/xSiKAlk21O7RAui+8Gga2gGUjxor3yIDjkRCEhoN380IW+JdBpa5Njngn1sa+j/PpLZcsTLmPhV4yui8lLe/HTfw5T+8VzFteQcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LYSa2PFh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LYSa2PFh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3500C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758496793;
	bh=O/Fn66kQc+NhqmBwy0+7z8YZn0F88yOITf1TU3J1rK8=;
	h=To:Subject:From:Date:From;
	b=LYSa2PFh8pttp9MkGVjRl78TKEjPYTErR+RpxwZ+CPtkPDGtRqQ1k6qUIyjeXfxSs
	 lMRMmWvi3WQxbK6HNw2qIzgNbMajOp8tSAs5CRhclyc8dMuFOllBzvqvM4+5JB8V6z
	 EWXtXJVQ8nO0ocZ1KTGjVI0vMz5EyqTLfXMFjNWXDCuUgmXHLAE197Lgn7oUU116nL
	 5Kue42KHZvCuDxjdovChn5YVXa+O39wd6X/TtPMaPjqTMEHGqOegQmWm+zZRIOfCyt
	 GYeO7EKj1w3J0qreIu37vBYeZWO3HeigN6s8Zny0hpWonYzzw6jypbSCRV3PuztG0T
	 Rp3sp0RSZ3+zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F246CAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175849679357.12018.8582063473511133414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60710288df4651448215312faf56adae6476f49769972ee96128caaabe7f95aa
Date: Sun, 21 Sep 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758496793

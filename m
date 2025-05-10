Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384461E3DD6
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746872994; cv=none; b=NwXO75LV/sG2/avTTk5dr3HOBC7JNzwRM67bg38AemWjCsHgL8AD1DgdJd/c08gvJEZtR2rLLiuymCFbMBIXnnpUGBl4AIG5Xoyn4NHtQ9DpBj1QgNxiIMInhJ+qEOVpK/eCdC9X3EigPbi9HhjTQ31Gc4vVVjgmwdwVZF0/iKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746872994; c=relaxed/simple;
	bh=7JdlGn9h+yQ/10QEoEZ7yAmYjMCrR0LMhxPjIvGQdpk=;
	h=To:Subject:From:Message-Id:Date; b=ugpv7TY9iwZCIW9Ew5cDNZ7EbvdUpt3vgkQ6V5UlMHdE6yhqhO909Oe6ah9FaYhV/J9PGA1NCCaFXH8LOb0+Npf4QY+zMSOuN9PAiIjl44v9PHus0mv5NTraDXyemZAcJloztijG2ykWtJ7apOcAHzTiUGafiJ/p19FtvDSeyb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rYKNaBGF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rYKNaBGF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38AAC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746872993;
	bh=7JdlGn9h+yQ/10QEoEZ7yAmYjMCrR0LMhxPjIvGQdpk=;
	h=To:Subject:From:Date:From;
	b=rYKNaBGFTkSZFNGTmFavOa3r/Pn5riFOBXsAbt9sMG5iCwLTcUJvi8E5Ivp626ZHA
	 qOjQq7wJbl0e9vhPa5cnYyQKuAm3pOgJzJh7UGohQ3IOfATfSEwY6lfOc/OVG7aJ3N
	 XjmLUMRm7+GhS8DE7/vkqgg3xyJA1O0inX/L1gwojJ/8DYMnkVnHGmVdosoGpEDfJA
	 UQqb1fnsW27pokJQwaw2iD2h1361aRyER22+JnpOZgIzGe/jzrBCoQFACjOhJHQCHP
	 gsffyDOi76Wg10EltO//a/WSGnS+zmXELaUOh3GBnaAGyYh9Gi6bnxJ5mbOeiKzdYl
	 gynheu+IFn9HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9051CC3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174687299358.12078.379817138156713812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 804f227c7686aca722501825a21104f41160d78af6ead92c07be4adb954e800c
Date: Sat, 10 May 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746872993

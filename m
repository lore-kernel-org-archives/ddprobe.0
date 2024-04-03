Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9CB04086B
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 03:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712115496; cv=none; b=MW1N4fWlhisRaA0xiCjmFSzyHRHJcqjb7Ytq3fSqASna8VVhFJg/cV2fYLNxRnFEY7VpC8phY+C0BIY3YeL6FuJNI0H0cyxhOAL6zzd31u1SeHUfrzbRDz2oZo6e2rv3ItIXDyRxjcEqmg4b6xFAOOr6g+zqYeYG+FmDRrJGmVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712115496; c=relaxed/simple;
	bh=7Ag9jZ+HUZO9jWuKgNWdPlJPbrLvQCfcxq5Z/kLj2v0=;
	h=To:Subject:From:Message-Id:Date; b=YoBSHZn4A+ka0N3oO8JRGA5289mSgHjgucJzrwZWscoCUNbR4gNpD4ITwr98ZwkbtHv4P+E8dR5nY2byKNyZiECHO2USa6fby9Ke/p2ZblkzCzCBAOZjPpNvcZzw/fuE7z+dg+3XCRHcfrZeAyaij7nUnXYAUu+ZI4lDNromubE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q4C9exqG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q4C9exqG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74B5AC433F1
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 03:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712115496;
	bh=7Ag9jZ+HUZO9jWuKgNWdPlJPbrLvQCfcxq5Z/kLj2v0=;
	h=To:Subject:From:Date:From;
	b=Q4C9exqGr6CTKDuSS78BF8aaFZNqddApQ02nvSPRSey3Akhn9q4cGlxgzFsUPKEBc
	 kXjjgCcP5Ftylz9N1of+TG707j4EnrJsYcL49bLieSyLwG3tB/VYUcPcomLgjaidCc
	 F8CqevdyUwvDAB+joHaM9HtnTE13CZ4ivmRBAz1KTAyHeTiHDq8RiZ3Igd4+a2xK9P
	 rxj4Gu5icSTFf7/FX7baYigcSZE/aItTb8f72bUtaXviPTfpBD7KSdC0UygO3Bjm5X
	 Ua31ypj9HRvRuzmBVRY9ZomOdHtdGTA8BHF2WGlJF1R9bjI3A2R7HsIikbJvM+wx2O
	 E3JXF0vRBoQ6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60862C6FD1F
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 03:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171211549638.7255.4085392827597221547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2beec731e7c4fdea7cf7b5fde17a87960d5ac3d135254f84dc44c8294df0f3b3
Date: Wed, 03 Apr 2024 03:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712115496

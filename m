Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FCAFD27E
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 03:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772942094; cv=none; b=R/iO5Lor6CzZXTMoSDwgB4pPU5qX32l+XGUkXF/21QhVjaDRXc9X7TabQcCayO7Is80zcng2Ufn45yM9PWAcAUrEfgqq6iN5gdky3+8lEBjww6LaVMMAUpM3tYHM4LUaUeolD+fJ4CE9zcVZYaBNA+kDytNY/tIj7lGxVIElPiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772942094; c=relaxed/simple;
	bh=E0xPeNV9XMBsXm/A2G51osef1u3op6eOibF9r5bf6Wg=;
	h=To:Subject:From:Message-Id:Date; b=q5AGLjXsahJfndj7BRfgrS/zDyrfedGdoOGUyhNolKsoKIA/kEvwJTgTZjo1ib00JVBjXfeii9uRpH9diylp/qnDSHYXQaLxhqB0+leaXdayhQ2Ux9+Z5Okm8RmCvMNX5pTPJKVOzmNVdA6F43E3dWfocYIKB+uM6zFttVv9Djc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HfZ1Qcd2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HfZ1Qcd2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1DEC116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 03:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772942093;
	bh=E0xPeNV9XMBsXm/A2G51osef1u3op6eOibF9r5bf6Wg=;
	h=To:Subject:From:Date:From;
	b=HfZ1Qcd266gtf4I8/Mw3eyHsIhUfGk+c6hHN8C8J1vkcDKWNRLtsRQReyLJ61ygf8
	 bTff2qS1zwxfl9oa2ncRaIwff7Ql8mN1HxZS3GBWg1bzTUUus2rvNHEfzLs4B2bTAC
	 ibmxN7iH4s1Cs0GSNhKx6qPEnPYKUP8FKPd8cwTRvmYKKQsJttkAVXHOWrJDw2R86u
	 6MolLMrfGsrwKwU6OhGNC0VtuNcPeyClcxJWtOVHSf3N8RSq04cQIofYnh5SdIpmXg
	 XVYv0etj2oB7gAbBd6G5Zhohz6svMNB5ZcKgaozDRYa+gJALLWSrnVYgF0y1lhb2zz
	 DJlD6kkdHRuQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93458F5512F
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 03:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177294209358.17908.9631679315971431680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 179cb57eeb6f20870427cdb404a2d04f05a77d6a19df382f1b209bf365c639b3
Date: Sun, 08 Mar 2026 03:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772942093

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26DE417E
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749400794; cv=none; b=qti8AOD1gDlYfRCnsL2hkgiR3K/8R3UzI+yaSZ4wtmLogzMaJ7+uSzotNUlGOAMqGSTAqQKsN+a7aFJ0IuPQ41GlTy3C6C7VpGSWUbsRVREeUg9j6Sy2qEHyJAUGbtSeNaDFuBzKEyY5wzKO5dLWcfuFmXt2rlrBGc0mLasT5pU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749400794; c=relaxed/simple;
	bh=gDaOl/xuKAOPyu9YSTnsqRBUb9kJtA2hRBzOR0uc9+Y=;
	h=To:Subject:From:Message-Id:Date; b=tSTtMeiBqjXzrjJpmc0q7ylvZs9CejpkBkZB8jNqbU2C1MZ8Uz0QC3qhhg8oHB7QJnrZJyyh14uvUlMv4pSnRhCPRVO/MQOVnF5jlHBOrIw3Ql8DqA4G4CCE6XCiPLhpUdj2VqJI1oxc5Zhu14Bez+UZV5+Nt/C3tPxNDFUKdYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DNvsE2oK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DNvsE2oK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B9FC4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749400793;
	bh=gDaOl/xuKAOPyu9YSTnsqRBUb9kJtA2hRBzOR0uc9+Y=;
	h=To:Subject:From:Date:From;
	b=DNvsE2oKSeuaF4FJHZ0nTGDIg/YuOD6hh7wlUlcZ8sm/SVMPECI+QlBJQRnszpTLs
	 QgQJupTUIgn2PGDLT7eBZwPu3yYbGyGK5OFgof+Z1SqHNfZj8txSb/2ntkIZTFdysG
	 7rWl2OT7TxcGjQTu2u+zAGmPwFHXUeEXrHF79V66BsnvvywIy947/EYcwVb1kYZEWm
	 yX8ulUC29YXBlMtxaccrXaZp6sNZISt5AXUZvKR42le2ICsfZUO1no0P94md8XmrAL
	 QCYUMNlXo/1ggMD2sM8zLB7OIxttCuGFQbJHAir3bJrn6guRfO3i0/TYUMs3pGgnRU
	 Gf7DHwCEd9Rzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D08C5B552
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174940079358.7522.7175117325985162858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca98b7222a61d700a4ab797b152e72ec444b5675c07191840b7082fc1795bdea
Date: Sun, 08 Jun 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749400793

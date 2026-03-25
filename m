Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222E133B974
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 18:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774464294; cv=none; b=Arx4UzGP7CryamAyGjJaGujuUEtM8Z1AfgMsEcJuXK1KZQzv9yAENXg0PMfD6M7b8U0QyLDUuyt+KPyyKqW/mAmmmJKRxOj2gKz1pELv9+ifNloCqf+j2RQb7xu+0oRK5AXtuROjf/JWA3SIWK/0/X7NWCB9mGTFrTeaxpfVKwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774464294; c=relaxed/simple;
	bh=jcGvOH0j3I/TKfgXa28e7Xr1AQWxmDazfbToRtuqsis=;
	h=To:Subject:From:Message-Id:Date; b=Zkh8V0qfNiXIRyMd4//KhHpQcXqLGpvn1TdtU4V4OoxMVeEmao8Mo/sTSTw19TLjxxnSoS5omxpDTOsoErDJfvU6sVmCUs7s6EuumLb3SNXt42wajILOzk8pc+WqhzeGZB4Bep8H4y+jKR2NYdJZnI5GtpaQVDYLwetSbc4gZgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rGjkBpLr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rGjkBpLr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5F09C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 18:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774464293;
	bh=jcGvOH0j3I/TKfgXa28e7Xr1AQWxmDazfbToRtuqsis=;
	h=To:Subject:From:Date:From;
	b=rGjkBpLrFElNuhUXZGFOaWw9da8NYK2EQU6ytdR7yLuGLkkXWDpctIVk+RJT6x6j2
	 1uXi+T5ZgDIHFh37iFnCgWBxCO3XDJny5vFbbLLg4bupq4NZxLSFzM5MDqN1UIJt72
	 m4AI+Zd+/uipNjYh+AF+24SC+a/Z8dzcrBSihPfaatcxgOz1wCW8y4utNnSze3OX80
	 6+hzDlKZpC8eFXgKMLH35e/1hxIMflFn2bIf4U13qEQxbGxGsY5eFakEdKjgNIYA1i
	 vffjf+2jreDpGTSiSqbcWEttNuW8ECF+3n9vKSZZCyprddM/DuxS47W/G6KXzya1pU
	 /lPh0BLZ9Alxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D8DB109C059
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 18:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177446429363.2872.9731645054636855094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9db848f6574c0546f3a859c57dca9a28e64e627295f523faf5ea4622caa9c60d
Date: Wed, 25 Mar 2026 18:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774464293

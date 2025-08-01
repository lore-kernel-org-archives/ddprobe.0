Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF0126F476
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754062794; cv=none; b=EB8kznEirNQ8Qan+ksILQ2rBrkszOZ51dAzjLWBRJVRZSNYmEpRNCSNOd1cir3RrS/OCdhIr35ICNiy8iwHXBMtKxidkTAe6L/WtGwy1I5sEnVCAvCK78FI4Wqn/Kq+WFtWn3k2uzOoe5hcMHBTn+UrC40XiYyIDAidcPfXD77c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754062794; c=relaxed/simple;
	bh=X8HngJF4+UZIpEMK4RKLsrJuQCNSU2g8vuojSOn6G5s=;
	h=To:Subject:From:Message-Id:Date; b=HpLSFetUWVYr1qRnalof7FYGXOImhbVlQQPXMpDOuLlK9hXMZ6RJpBSOIRhWn6zuiuV1GM8SOcNb4eub/aZ3xqh9pyh5SsFOZ82hx4ej90dvA7g/Y2sNFzSYSPm6bVVPq7RCiogtDZBZS7NkoXdY5EwAuqDNG7Xryo+HgICd1mE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b7maB4iJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b7maB4iJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15F3C4CEF9
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754062793;
	bh=X8HngJF4+UZIpEMK4RKLsrJuQCNSU2g8vuojSOn6G5s=;
	h=To:Subject:From:Date:From;
	b=b7maB4iJgttlDR6xSXPYxHcTxlrniPAj2LKfTRWOah1adjOlWEY+NGyvd9P0nOhOI
	 TNn2v45M1SySS4KIG8GcIKhKZ1Hkp4FgdhrZNvKsNZfIkzYCsskBaAV87pAxd6E6XA
	 M6UkGIoeyOUfdjF2ocCe33B4D7SezGV58uqkQBRZstnMKcFYwsOFzRlWS3hF/ZmCGK
	 W33RgG/yNTOjMsMbsJBfegNngG4y9CeTHVhqH7jtds2vuGNwjyb5/LQoCfR6QuzBJO
	 /lWSsaewLqyiRaGwFihb5SnFWWGP3W32VP1MD9de/Oc8q3YaGNnFID8b5T3IeFQgqt
	 iqVDjWtslSDVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE89C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175406279358.31893.16781541325150869239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 938226b10317554940c389324dd642c1acddca23778acd23976a27ebd01b0de2
Date: Fri, 01 Aug 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754062793

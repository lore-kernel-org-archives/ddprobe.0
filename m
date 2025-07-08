Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E280823DE
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751993994; cv=none; b=M5Kl5BEaMqaB/a7zQgaLKqG6CkxsvjHiPuPbV2/nLs5fzWZysr1Jsq2tNE3vGmfMwKBQ16PgAOu0ptPjwyIYFP/rcuqtO6vbTlPdu3txmbHAckGyl5U5rtqjlyAg+XQg6huJHUfoNrFXDUh0LPGG5fZPK/9oDru1u5oAbbx4k9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751993994; c=relaxed/simple;
	bh=s8vdaAQJJHU8nK7dWpNBamuAJ1TlFWysPnkNPvB/vvo=;
	h=To:Subject:From:Message-Id:Date; b=GKEZuzqmxfeGRTxCuhyAMORJamp7Vq12nwuBqFuJDmVktt5OX+xMMDv1SURrDOdKwXbVvIG8Ou8EvmJVydm6pJ/3IxJljYD5FVCzsAaoffIz0P0wjOhIKZ3FIQ8uztTLAoMiDvg497EeE0sWrXq3W7bfJ9Vh7voONy8G404E0Lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bp2MLsIx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bp2MLsIx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F74CC4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751993993;
	bh=s8vdaAQJJHU8nK7dWpNBamuAJ1TlFWysPnkNPvB/vvo=;
	h=To:Subject:From:Date:From;
	b=Bp2MLsIx5Hsw2lFLu5DchL83RpX/kDZ+fqkiLc3vpNdar2LBakOQxUvI7Bb5FEm1G
	 7SnHtLwkCzr2tpNB6jYJJ1nhcAcL7Ku1FFKu+FHHOPr6SsSSia698/9ZnCADEo71OT
	 VQNGK+yred5sSCPpHwT8MwxzSea3udflQXJmXvIzZ+xofoauFKqpHgMejcdSUwXQSp
	 Qm5tH8lgiTgvPKmhncsECdQBocgaEHsyOanNACQLYD0ttW4U4zGYJwr9sGGAgtUOXf
	 GS293ig4M6qND7eub100fpvm9/kjnqyv4pte4lNHzG5SoHlscMNTK7rcZiziNCc288
	 UjsQQxLPVL0eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC40C83F0A
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175199399357.16576.2061252436774556602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39defdd02832545599c0ac048d22ae5a22cb19a004b8e68dde6441077ec12d07
Date: Tue, 08 Jul 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751993993

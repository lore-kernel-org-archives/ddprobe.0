Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A5E17721
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 19:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H1OL1ROn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91220C433C8
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 19:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698520096;
	bh=SbunjClgfg8GKsQkuzrfjDXzCaRsgZygNuqozruMwDA=;
	h=To:Subject:From:Date:From;
	b=H1OL1ROnJQfzGHshabPU6X9EqVsDCMtxP/08/zcdfjvJwNykeojILevgmGrPRlgKw
	 Xc1913Mt34yTopu28YcnBUbDnMQiOpSucUjQxYAUJKy6z42eDOf3xPSwa5pY80vpfK
	 ooMMi4R6zUsDAcjZywh2Rf7p52Xq0D+s7pfHa23rX2wwLWn3tj3beTj4UbQKfNLdBT
	 Z943DhQ/DQ3+ZJJ0FX6WjeZBwvGpxmdWlOVrp08AlbML8yKjT/Y7PH8MxxdCl7mGng
	 EvK4b1Rj35AHJbtcVZEMmbKojXMAmD7pMSd9wErLHNM/aRIV277keZ69vU2TYx9eTY
	 V1Z7b2GX6oE7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E392C4332F
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 19:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169852009644.30207.6462133944827847801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6e8290f483c83006087bb3c44e736a338c724c3cb2cddd92ea60044ca2cf745
Date: Sat, 28 Oct 2023 19:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698520096

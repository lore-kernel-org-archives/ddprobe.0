Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411E18634C
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747713594; cv=none; b=qYCNGbd0ynrAMaNktgeL4sUQu8edJIerF/WRK+52Z1hZqbE0Lc7jJQRLwADBxSEVRRj64qdhkRcE//GR3U5gL8Lw+sHVzEJkAKMHl0c7PphZFjTKsmBbEpRG459ApbDsRc06PO4fU5BC2ifVg7GwuYxYALwpfEdk/T0hZOMpr1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747713594; c=relaxed/simple;
	bh=MSy7MwGoca/lAd6Tb+HlxijEVOEzba4eG5mj2UQ7Qd0=;
	h=To:Subject:From:Message-Id:Date; b=ocOP2FoO/CRIWvqWXu/9UBgPlwTzT2EaiWlKGAukN0Ppo65NiYRWdrqmPdK2xL/2rbtBh8tld0FOXk4gW0T5m4WfxNL4xdFCdSMCz+qBCmb5835hLnc+2Esyxkli8GxpjKvjF2c36pTGdWXptiX0SZRAGhQEjdzSQawxY9as2oM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qAjI+T3V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qAjI+T3V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CF0C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747713593;
	bh=MSy7MwGoca/lAd6Tb+HlxijEVOEzba4eG5mj2UQ7Qd0=;
	h=To:Subject:From:Date:From;
	b=qAjI+T3Vxl2UA+3IlKDigssYfwEOWpvMVnnKcEBeotgrBa+lla2K2kNb3bxcwoJ+J
	 df97P3mkXvUvziDozosROO+LYcbpvY0J+YCeSTDlBkb0m7zQsnyZphB+jUiBuuujS1
	 jSBGSAnV7a+LL+43PYMSBo1JKjue50MO0d9EADkZHp3haR4tR+cNRcvgo8alQgudZ5
	 /ZwnPiW29jzWN1wcFLobxuZ0OgnF/UsrN+oIM9JoLvx/uNdTQDUG0QiZkdmESgdWoy
	 zGGWif26srm07blnWhEQr7/YjB5C6fayTXnGYX0SHU+RWalUFpGM907s55AXRBptMg
	 ol6x9M28PhkHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0B9C54754
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174771359357.16215.13699848229782160447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81d90dad44e7a5cffcba5656d805f7269a66495430c546991f09a7a32614ee43
Date: Tue, 20 May 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747713593

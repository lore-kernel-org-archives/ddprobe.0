Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3098A20F7
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 08:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TUfxKvdX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 983C0C433C8
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 08:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700294896;
	bh=ChEa4fs7m4WDmAUN4RW/olO6lFvvxxIPqW7Y5n8XLmE=;
	h=To:Subject:From:Date:From;
	b=TUfxKvdXdGiBy1as5zESfgZxumqsq2G0HYlJGjon5WgH4UsTSSX1texdGjKAkrE4o
	 qp5+tsjw6xb1G1h/wqShwk+35HU9sVVYKbbpsq07c8etktrZXjYWOwN64usofUQres
	 x6W6QDmFrccgltBdw0xkYoyks4YCPxSwPOceOCOOMSsiHetvFMUOsm43vW7RA6PmLB
	 gcXLOmAFJ+v3NDBKrzdebtDmdJpOD4flqZ3gcsk188vwB6nJOTv7cvcelXEw+rwRdo
	 As4m9vciER7zFDXO7H5MKO9I+mE9RjicWWpj0EcbtnZpySsY480PEO5i7hVG31jwwR
	 5M4PSTLelWseA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73D38C2BB3F
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 08:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170029489646.19928.8342031143952388974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db87e9b74b19dba86e9c4edcdfd8e35e5bc7c90344633bb9bf8968ee7835b9b8
Date: Sat, 18 Nov 2023 08:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700294896

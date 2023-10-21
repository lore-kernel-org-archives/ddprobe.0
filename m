Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BAA21B28D
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 22:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CPXHGHS2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AA2AC433C7
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 22:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697928496;
	bh=oEbh92H5ohcTuoTJI4rXmDOaztYBKG8Yd4khOzzXvBw=;
	h=To:Subject:From:Date:From;
	b=CPXHGHS2CGbKc7JLjYy4oEN1lBUmWYw3LTDRrKNmzqilC5ro6Yvv4LTkSyasc9+3F
	 cGVQwCVrCUCHUiuvWNr83OaGouPeMkj28VpEKtNYbXIqeWzYBeMTudNurY9zZrUH4f
	 J4EJ5p0x61j21HsMVu+NatwyjXyCCSaNIz750VklkgqJt/gGBL/dDSKmMJRmdII3td
	 0mh8/pUNBUqdayxaAwAYf9jPlWkvfBsYxDe/6k8viyTYsmXY6jtV6VNAj7LZXBBwVI
	 kMnftXczFqXV7Nk4mYMBtDJ9T6K2XLswsfhBTKN6LhpUmnd5yM8G/8NhTPCxm6jgLz
	 LCT+ANcGIZ4Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B334C001E0
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 22:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169792849639.12946.6262253526851571447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f04955e099bb5d4ab4c95d4db4c121ed5810473010b93f17d4b4d22b0934d99e
Date: Sat, 21 Oct 2023 22:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697928496

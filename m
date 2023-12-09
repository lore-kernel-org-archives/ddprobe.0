Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CF5F154BE
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 19:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TN7x5aGb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D390C433C8
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 19:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702151896;
	bh=V3608O15CnfsYawPLKmxOU55476gCYDZMq+fn2g9gyg=;
	h=To:Subject:From:Date:From;
	b=TN7x5aGbTyBXV6CEkZdAs6U6k3oP2aFs0327NRhtiJN/g3B48qvDRpTBH2cowaHUr
	 buKYyZWYr1xleXBx5Cyh6Ils1XRWiLEmPreg/Zl/16s9uWRZDHnz2A75WXfYbmjeU6
	 NjBHTxN4ZbqXUoysgzAsYM4ude3rXU02pStNe8O0A+/fqoaNMWaTG3pbNsftBj+Adc
	 WjEmqHPLfIjik9zS0qs7XzTJNvGfcgv7Utnuxkwni5O4O0GRvaxCnRKID+DgRPk7bR
	 CDMGSpnN+b5vgLaqhE3UbEK8Ls3RSxzFQFzI/gf6bvdTraCvjtEAktdQ9G7QSNgCOU
	 yAxnT1cXSpSxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 601EFC4167B
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 19:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170215189637.8375.12908342167944300754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8158d94bfd1ca4835dfaa7324a88534c2b617964401b25d656e8184af9979e4b
Date: Sat, 09 Dec 2023 19:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702151896

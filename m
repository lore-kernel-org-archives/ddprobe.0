Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F161373
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 12:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD75AC4339E
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 12:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679228705;
	bh=f+MxKyFb63HjJV4lLzIGV6H6QtthitAvPPQZ1KiCYM8=;
	h=To:Subject:From:Date:From;
	b=GpjBLAtIUpIsg0cWPKi/LB9f4XAn1V2U0nqRsqi1dW/CHO1eC2njOygFt4fV2WMN0
	 o6mTw/CzCHU/HGzgVeYAMXfGOxCEFK7rDZmwEDbZ0pCfj6nsqYVnDkn5me1FK4EB9R
	 7w/0tyrvAMU/sBr9jFK4LArMlniuICmUOELE8y3Ru5nfkK8Pw7qGTRoU7nz6VZDn/c
	 KwBubbU6SwR7a34YVLDTx+VGd4oFp+izfpPKZWFIj0F7fh4eFHb4/b67sA7ClcuOF7
	 4HurfRay6yf8fzcNbvrcr29c942f94lB7YdY5XW/bwiYkb+bJqw61fAlKYVN5ribtn
	 kysUCwWHSiuOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B55C2C6FD1F
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 12:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167922870573.21630.16188482603050595879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9f2bf1e4f9a879c3102a117b577db3bba8fbb9b809da09b5c0d264fa4a81b8e
Date: Sun, 19 Mar 2023 12:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679228705

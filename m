Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1653FBA37
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 16:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zf5JY9bQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82D0DC433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 16:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703955496;
	bh=1qbpqdmzkhXbqy63UJ9ljXuNDnDxIzFNK4KvtZrIXlw=;
	h=To:Subject:From:Date:From;
	b=Zf5JY9bQ7w7us53qr8ybNmcCp9yXMZ2D0uR4yi19m6uw1pHjSDPNFNqZSBj9r7v/c
	 3n/mrucX7YX7hBv3HtzbobbdALh1ULc86e4iNvvvTIglxP2lJ9cD9beJ2lXfolDA0C
	 WETooZQYfTHmyj34yoIlI1TxPiIgSy14nlout0U08JxJzdh0N68nXupB5rclHBPAE5
	 lKnr0eBTIMnQZGZxN4taTziyEuJ/kWNGaDt2qAtn/JKM845E/eGUjJm/MjxBc/6PVG
	 8y/pe63BwzsR528X1Od705L6IUtR2V3Lvyya9v24xZxU/WDK5kM+sO/Fj4v7zB9hgn
	 uMBBcz/O5d+Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 650C3C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 16:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170395549640.3186.380347668312243495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85cd2c637085fdac8ab09e33b12d759f437286891f57f3f0f6b2aed84c8e27f6
Date: Sat, 30 Dec 2023 16:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703955496

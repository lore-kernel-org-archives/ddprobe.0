Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C24094C62
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 16:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FA3EC43470
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 16:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662742253;
	bh=fX/UkoOPpjb12IIPzJ6pv63RjQ6LyasgHGtdR5dhNJw=;
	h=To:Subject:From:Date:From;
	b=BifPKRN7wKhe7EKWDOaf2pIM/z7kZ36s0FqWlES1anJEN+aIEmdrSbmq5O6HsSX7D
	 LUVmKEpVe7S25m7mbf54ZYycRVPOurUjT0uX1Kn5FSdW2Dk8NXF+tCxnWaAaHdzmn5
	 UBpgKM/YEJH/txs9pmFbbKJelAV6nDT4GJwPGYvO+UYhjwZY/qmyEhKhuAJDDle1xt
	 d1SYO6MtFNIDt14jRIK6/pPQGfvdey17LXqMPIqfHddJbfzyqjOTS7DQSnGTIET+5T
	 3FnqiOndvyq4dC19pYY3dZ/ZTHa3B2iYKi3aW4ugXOLUPEegO8GNIqCm3KS2WHV0AF
	 +fTwQqN/EyZtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50CF9ECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 16:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166274225332.24432.10868980236555161816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d47b2eaa182c66f0406ffc001784e4edeeebaf6bf964e041be09c6fa8dcecd1
Date: Fri, 09 Sep 2022 16:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662742253

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7195B63DD
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 12:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fPD+pJ//"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC57CC433C7
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 12:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697374028;
	bh=1L8CNItp8G2R+ZT/UV9kvOmXnPJMNe4lLAYmNbbnB+A=;
	h=To:Subject:From:Date:From;
	b=fPD+pJ//1+PRObo7DamrZGgbcIxApq7PUETnibuV4uMIzupw4BSnvgp2lFTeJ8n/n
	 6hkmgKNDxpOmeTI/GlAgGBkXnar+tkzX070f99Xa9e82dl2oAyLB3OYWxvm+t7mRM0
	 T87H0nAjYDhokPHeP7jcIxdKYF6ASqqjar2RQXDy3ZsyBrYDnbZF8k15jWCYsgm6z7
	 E6N3F3KUSamhxacFLLlBCM1a51J8A5ThBC1VpxBr8qTqpr3bh0NGNeHeBno8C7jcjq
	 wK7NHCV5p/h7Y/QUIERaHo5wQF6M6EpPFkJz0hm4BxBNrngdgqXIRsNzunbjbYolrc
	 aSJ8A9zwr/LGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA7ACDB483
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 12:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169737402870.13941.11553325284825238929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de2c2425ec6ee6d551abda5016c5c860aa41d83418ff464dacae38971ed5a331
Date: Sun, 15 Oct 2023 12:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697374028

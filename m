Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6EEE8F75
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 11:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E40DC433D7
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664019053;
	bh=V7qHwhwlkmpCooRw2CtsijIY70HB2yPvltCu/UNc4pQ=;
	h=To:Subject:From:Date:From;
	b=olG/qNx+PUaqDEg3LtN7eqMQPlBP2v624ywloTuMjFgR0MpVwFb/B44f/FOhk1Ns7
	 Ckh3oSfrq+4kw1JpdS+VuBkkGZYQ2Lh3nvzV26vUbYYck4REDXIY6W5cfdJfjvndQR
	 QtBbvGCJUJVRUdNdpQtPITeAWdidHOm4Gx1LrTGVt7QT41zZck7c8o3bPpo/82/wlX
	 4y9sBz/EnivPX6vCxo6bVzGgDNFLWD4db3kkNvzPAsGjINuWg9BPheJUVfX/jUT3tT
	 v75KteJaONbX/pX/fGWJpLT1FqMYEO1RwW4CzDKN0KZvBv2sL5f+pMrxo4i7wHSirO
	 Z83rSjDqJTBSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52289C07E9D
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 11:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166401905332.13621.9022175348498486364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c581fe49edd5487cfb74cf9061703e1a3edd8886b81bb5b40c85346e93aadb5
Date: Sat, 24 Sep 2022 11:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664019053

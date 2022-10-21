Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B92A520E1
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 14:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69A60C433D6
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666361453;
	bh=9/jdrqVYc3s++ebf9/HgkyFcCqtqfSrKX1JOY1cHszQ=;
	h=To:Subject:From:Date:From;
	b=famRIKdo8FXAaMiGFj5JlF6gbgIa2DrkIdchOMlTdCE75iZIJgNGPrA2inmEHzICB
	 RX4iaXYDjnaUYZke4nDNkD3t/YlJFpAIBJPRSp6hihd2QWh5VduXrJyIODummT5HJ4
	 9fFvk2XSsUhNZ1xwQHsIZVgr69XVu3Lvz9436oQJJ4NBBT0/BWqiqtr0/JW8VyE4y3
	 GOiPdT1ooiXFNAovlIYXbZ+yM++beu5oO9g81oVz9fdfUqCkPAZK6jm8FSkEgjeHQ+
	 kh4DCuwxuN6fzlR+R5gjulAz44rWYFX6nvWkyfS1nNAMCvovE9e39XizAMAUsRigGl
	 lUFsur27j487Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50623C4332F
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 14:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166636145332.5326.5081269743128226397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec46813a83fe30c99059be6b2aa32a03b517e931e9277b9509057b453bfd09a9
Date: Fri, 21 Oct 2022 14:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666361453

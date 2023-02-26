Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4917F396
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 17:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0E57C433EF
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 17:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677432965;
	bh=mLLqOaq9D6+2zFdn98MMI7uOu3RzR1PEIO7WtK7eTEI=;
	h=To:Subject:From:Date:From;
	b=ru0P4GOyUSp2RP8+ji+o60EePXCzZysv83dX45TH/DexpIMTYSeJQS5ZV5NZs0xjc
	 GT9tDH2BTu0ve2Fc0pNzrzzBGh04Akd48B4vX0ClL9LtNYdkJZAX19c+i18vt9XHKD
	 zte920utIUclujNuCOkJeJ1V/Qxv6mMXPn5SEMfLNULgCaQBx3CPFprfMgGo2SDfcT
	 umwxnbVRdvj0NQdrZWDJIycG4B1F8G4Hnpq/jP1TjyjsW7kpEYhDPyU6lUFb7uJltw
	 ZE8KuiRmHxtdB5duS2CZ5bYPZvh1k2I7MPi4Z3W4nvZcJT0dgx/Vae7sIQcftUZlyP
	 lnVbYyh/5z+yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9769C6FA8E
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 17:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167743296581.10096.10442181786511841698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07e848ee7ebf3c0b686609f6d309164e47f1a1c7924786688433ae6b8e111874
Date: Sun, 26 Feb 2023 17:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677432965

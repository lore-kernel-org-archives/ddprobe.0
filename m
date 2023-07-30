Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79E54810
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 06:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D17E5C433C8
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 06:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690699928;
	bh=K1aA6G+1jz95gRV2p0cOGrELqRaVAu2C//E9VlVJHgM=;
	h=To:Subject:From:Date:From;
	b=BodYcHNoDYW5HXOmBKehDfs6coCnB98uYUek306cPRX6NYdmqcanzXy2RJDGAar8i
	 5Lc+ISAhFId6X7/J00m0/SIpJkuhQuDr6V9aVZUrmKNdwtROlBSW6XIl1LS+/a9PJH
	 EOJGsanPGhbruVpAmZmGj4xiGG9UI75rRnx/hb7bcS7ZuY6hMIZY1M+UTonC2N2ewE
	 0SdaARBTaXC5h8fynzZ/kfO8EVmFsSxDPNpy57lVlNgyK7kJJjYA8cjw6yPOEQMXuc
	 iLk7xyplzjWyI2RtOxFmRZaWBWsQRdvUAw8V14yT6kEg9x091OvwMcJB34jsInzdqW
	 76zNjCe8PYGog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1BB7EB64DD
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 06:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169069992869.2669.12726011520434282613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1667f93c2dbbfcbd3cf738a8e65b89cda1848f5b77c797777de3a9d80cd1f7a
Date: Sun, 30 Jul 2023 06:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690699928

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79FDEC121
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 21:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7E79C433C7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 21:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688852228;
	bh=DsEnE7/hSMKbsQiFIZ721F67938sGgy1Dk21hQnKaoM=;
	h=To:Subject:From:Date:From;
	b=sElf8OBqixq27wsU1RMD1q+kmqmew0Djy0kvAvbFZ/8Sa3EWp6zE8WMPh6XGnZLlr
	 VFSE9P2yBzdNYCSYirAo38WYCMsUaOE47ieZMPE/ySdJ5w5v/tWVomn3lUMly0WNbR
	 lAG49rctW4t25K6uhQhQQTRa8zVHkXqRk5VhjdV6i82rmQtRTJYWVO1bHVoiCGhboB
	 Bx5MnM/7nl1jxkKHHM9WXNYrIeY+xNP4GZ26dYD0IH3CEGHtHM+LKQ3M3hi4udAMNP
	 IDxyGdbHLPdNsGTQNzvlHDKLDi5AQrWRO29jkLAVrV3n+GGGWQXKJX6IDprFLw2qDQ
	 FECSnjjGctN5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2306EB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 21:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168885222877.23772.4414885048090694030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e68594956a409c1a6e96965c569b0bcc00a453949e3b356d0653c964c0543a46
Date: Sat, 08 Jul 2023 21:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688852228

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA7B12912
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 19:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C01EC433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 19:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670786487;
	bh=FHRXg3zMEusfC8dqdEUcEx0Fu5T7A3ASS/M0DzjjL/M=;
	h=To:Subject:From:Date:From;
	b=WYZzsLGFw9s138RR22k30b/1/3mIlq+l//iJd7k3dQGAh+rHLvMGcxQPkPk6ONHg1
	 kdh4wqLt5tnRy39evD6U4x/ZCz9iNeM5k+C0WjFCfzoVSRBmaK+a4Teaa3ayr6JlTH
	 b94JwmKYE4natrfIh/SG98reUnzrgWJeK+FOUu+kzwwsvdKNgYf6n12081ENSDqOmu
	 MioZNBdM3bnRWMn7FSfE3MH0xJDHAZPXKUgmsIjKVABovrn0NI77YXlG9XS5RJ7eQp
	 wjoyXbCraN/sUkg6ekzKAdHMX3jDusj0W8quS1uYJl4zKX2i3D/UhNm9WHzaacpDVO
	 ky0OTgdIFW7qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FE04C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 19:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167078648742.1865.14867317256384926116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df4f93eab9b3a24fcbdbedbbdbcc6e1ed4f77ac249428fb7d396b96397555a3a
Date: Sun, 11 Dec 2022 19:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670786487

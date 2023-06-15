Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B85E156C0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 16:19:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D06D8C433C8
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 16:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686845948;
	bh=p2j7uwFfdOuwWc1aONszN8IMRpgEqp8IENWcxPASV30=;
	h=To:Subject:From:Date:From;
	b=G+A2WqvB8QEUiKwqLeIK4cPR1Ca+UbTSSH/0KCKBAI/XO0xkzmXNH4OeSw/GO39OJ
	 kp/MRYHg9nUUyTvRw0yF4EfuES9Ic/YJ+GLSQ24ayMs4oTMcSBFAvzyNe5lc5POADw
	 2H8cSvtZdQ3U3R1YP7Bhb8heX7b0RYgEIqJ3koGcpjknuahEyLP2nMc6E1hNkCRcN7
	 JcatoAE8t3Y8KHQBT0TgyrVeXnZf3m3U8ztxQzNDhxf/CIujd9B+uMPJwFhL2UYXFk
	 R5tcYiLo2ES0Qv8xnTPPYB4+NRwjMW25W5MS8u1quMdRk2lecSrCCmGseVEv6EHdam
	 W/RCx+HiQA5/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC295EB64DA
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 16:19:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168684594869.21952.3507180923561448516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 382746ee595cb398db99357388a1efb5be298e4cb56a01777471fed79dbee827
Date: Thu, 15 Jun 2023 16:19:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686845948

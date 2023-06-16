Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57CD6368
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 02:59:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C92D1C433C8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 02:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686884348;
	bh=u4CAcdMSwcRNax3urrSUklj/5B0e5RST2u17LFKMUHE=;
	h=To:Subject:From:Date:From;
	b=C9mXeeEQ3IIMBpEg3MMqB06W09AkPk/fDSBdTWW4Kmh4UpB3ygkUkt8Qb3MBI8ltZ
	 LvE19pahfi9u3SwfA8p4Fi2OyMXSA3URv4xHgoWrYUHyWH/p+au2kbp9Xj422egZyW
	 5nAM2aK96xK9i3wimsJ7X0Jsr88l1Lasytc2Xn3yG5TMjFI2u48+iViy4EqU9LNSM5
	 QoxtAejV6hAOo3NqenLchDFkwvDrMSahV9LWD0u431J2V3xOajKUBFyKVcACrfZlay
	 4v2SMVTle84aK0mrn2PDm3E1/uwPs01xvLDdLIZ5kmwFLWlt/krFDMe/tg5hGUcXDY
	 Rpjyic3xAP0lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7EF5EB64D9
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 02:59:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168688434868.454.12664896874215948313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a796ea0000015c3e3d4ac928ad519c214af0ac40c4d714f386f9877adcd83538
Date: Fri, 16 Jun 2023 02:59:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686884348

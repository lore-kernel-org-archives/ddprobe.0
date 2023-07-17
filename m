Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E60D10977
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 22:21:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03188C433C8
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 22:21:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689632469;
	bh=gDSojC7bp4J427ccS3SoydK+MzyABZY9yWbN/m4agjQ=;
	h=To:Subject:From:Date:From;
	b=d0tRDGTJZMoSW6ttUlCZPdaodgxxZd9cDM2dX1nXHMIj1Z1Rj5moJl4WhIIBQCTTn
	 cI8Ypcc8lohZaaljlG9r8d1x6wf992M1EXD9UajzFmr0wREL2+ha3ORehPP5+etEis
	 9tAZYQtO693D7OQHq265aZ7js4hvwzDnmTRoQmvTZHsp+MqqiZiTMs36sHrz/keeV6
	 WSxbbXinFxLRQRqpZwdThLpWjiLu2spAfocXdLN3Bw5B56WB4P3cehOFF9AGxPHjYf
	 s3rTw+m1LrEEQBn1MOC/wi9NSzwjXD336Ik74hWQ5pjDJSCGlJxyTsybi/5Zr72qoL
	 Mdw9eNE/2WpCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC40CEB64DC
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 22:21:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168963246877.2983.12360943685905781153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15aafe9b5d0823a2868595d7171ee88d4e2e09033a9088be8ebff4ea7719c8c7
Date: Mon, 17 Jul 2023 22:21:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689632468

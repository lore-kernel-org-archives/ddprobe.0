Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF0CA7B
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 05:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 812E7C433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 05:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670908887;
	bh=mcKIZ3cfX4O38R+A1trmSry0VvdiX0/4qBORc+lbs54=;
	h=To:Subject:From:Date:From;
	b=WYSfwHIRLHY+sYDK91DvE2gDTPLopaIqO3tshgSdwlVh96Evh/aQL26A4y9zZof+H
	 DTFpi79rMOvNbfvixIuDgYQbPJ1CB+57NaLh3C3rEs7zKg3U6XzPjwv5ak4KzJU2RX
	 ftXRMpqqWPSTumB3C83Kka2zhcN2wSOp8OkToVHqpF5TPz86mB3sn1oCPs0VDLugLX
	 xtbwb29jLZz71HA9EvvYVOFgYpVegga1mJV/J6FwppUOSm0or4sXnC0h2tRClxAYd2
	 KygaAi8+5+QEhJziIJRriVFUj0bGA/t74Mrz0EQNFKI18NKTzMD13s85FX0LIqXjFG
	 1YyfC0nwpzapQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62F36C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 05:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167090888739.27219.6331352301036963263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77bf3a5db51140ad1eac4bb5cbf67d8495890cd3b1fc999e15dffc918f723fa5
Date: Tue, 13 Dec 2022 05:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670908887

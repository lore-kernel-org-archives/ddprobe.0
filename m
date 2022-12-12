Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D50101C27
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 03:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CADBC433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 03:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670814087;
	bh=w0eX2N/8R/3b6e/v4ibPwz1cjclqvbOINXVb4JPZ3tQ=;
	h=To:Subject:From:Date:From;
	b=gdBNLtwDrWT2Y9QBomya5M5UJ7+gMW9b6O6zEhD9iHmSj803yFAGk0/VmwdxFgbxI
	 S2owtOYatG1uZrB9nu6C376v2hLUQDQanhkBVYnfALgFNnUx+sev0VCniO5IXZB2rO
	 +Ns3ucTqnB7LWsyCr5a8FW+NiV3nk8k5Iob2olJ+JcvoBxu4ES9XDF8ut946winfRN
	 ALrv5NSM7xxi+/M9irak6RXigv0dyxlxn0pYO3tgDcfc74TSqfAqNn2AJNEB9H8Q7J
	 0Ig3i2HLpFZAeOmEnN1gUYIYOOyZKc0zdOjqaV4L/Jio0lpQo7bA6bU8elAxb15MvG
	 qUQPMhdIvH3Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63649C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 03:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167081408740.29995.9688776612570407977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf567cd62216adf47d654bbecc5fc96eeafb06a2b34a7dacc217a2e98fb833f7
Date: Mon, 12 Dec 2022 03:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670814087

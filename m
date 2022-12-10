Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08DAE1109
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 12:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD885C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 12:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670673687;
	bh=MO2kqXezUxaUB7o5FblkaDIBy2slNoebma/JL+e/Kls=;
	h=To:Subject:From:Date:From;
	b=aJqCD9QMfgmTwOSfaMlWg40mW+hB1tJ145HBLkVGc4IqdkM5ADZ6mdEE7L0HYbwrk
	 5sjTaACC09lPJ+9e9Jc4iSUWtPAbSvNjEJ+K+UresQYuX3QStGOOp7NIZf373oKq3M
	 khx2Tz5baeNfgRI5gYTSFxiQ0Zn5Iw8GFu2Ehq/i20+0Gh20ySKedotd3EmkOl3CHd
	 Kxm+gG2cwlx2dhHp1b7kqIkhlCLNs+JRNFipYJs82unAo5dSpJVR09Y0eQYveRsqEp
	 v8vl2HRXk+QHWbSSD1eeOJuBVHTnGQf7AJBN7sz0ujMH4WV5JMMWGxmm9tNbHDcX4S
	 l6syBko59Jr1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 83F00C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 12:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167067368753.4495.3962073275830234102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14815065eafd5e626baea27069726fdabb323b9e20001ed13ebd7821e1110855
Date: Sat, 10 Dec 2022 12:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670673687

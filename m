Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5E421C14
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 13:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 778BAC433C1
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666704053;
	bh=9Iub6KsdzQRCHLwWeB/aC9NfCv8LKGxQOMOunN/gHyM=;
	h=To:Subject:From:Date:From;
	b=Eq1KAILsySXYvkhnVZ/DI3lkMAMuYu+DO9HW8OCmmfQr3IYg3XLsdIWK6MhnFNwr9
	 6P2dB1ZSPZok63hwRJC3LiVM8GpucRcimboThXiykewzwqTLZPrzaG5CdVso0p78UV
	 VxHW0thmogQag0kJl5z/F1hNiUQDB3iIEsuuiqVHxh537q/9ZSnQxuOBU3TCEhenWD
	 1yIgUxPFbOEuRXB3ghvbkbSq7w7VqjDx2zV14ASoWiOgNrkTuJ2UQzMvVyt1IQ8TeO
	 IoQk0TAgTAPzdX3Com3uVsF8bSNQD93eojHXSdt9MegcSbX9J62kAygCGMtXHwyAXK
	 2Tudtyj/o+aGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54FFCC04A95
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 13:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166670405333.25259.11176155737579654047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1f5c8a09a2d0ecfcb6f9f5b4023a66f546ba6c5a1ccd68e587ace435e1455ef
Date: Tue, 25 Oct 2022 13:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666704053

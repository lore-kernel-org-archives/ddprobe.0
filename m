Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A2821366
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 11:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D89ACC433EF
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 11:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679225105;
	bh=7nXtostFPeo0VtQ9ZYNA0RUswLh/L1xuqGn97dVs7Mk=;
	h=To:Subject:From:Date:From;
	b=QqM5/lLlLV/e2/irZaguaMvoDEK8YNVlrwV9eS62OBPsKAJ7o0Stc9SMhUwQCgnWi
	 VQC6oG/lR5wue4QUR5yKXzE62IFCIYSQRxLLMnBBy1QFpUo8oArrwl3N8Q/N2ZFHWg
	 WnCNO6mHwWy9AQpqMg5wUln/gxKt/D8v2dkboHzyLAFY2ZDWf4HTljBrd5fr71RYcS
	 ry6TIg8h8ju8jQ7MAaZvHzBZsbwCWSnTEbJYVjUjf2w7ElED4nlxOE93VPlcK5n+7U
	 kHKaAWm4lEWMJI17+hgjXHcTzKtXxf+vPl2Vckke3ImbQHSmexV+QuVVyJTYWmI1F5
	 B9Cv11J4ewX0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9DB6C7618A
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 11:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167922510574.16768.6183040243063702909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ebe47c7cc251371832d3382f308713af52ba12ddcbec75ac77deb0edc59d865
Date: Sun, 19 Mar 2023 11:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679225105

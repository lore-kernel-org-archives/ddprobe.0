Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7C5918F
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 12:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70CE1C433D6
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664023253;
	bh=cOEixcYBAejlZYj3VLEb52OWO1k+QjKXOqq0SN1U+ds=;
	h=To:Subject:From:Date:From;
	b=ScJPXiHMa0hjkDfHAE9KXiefVc08OjEfOdOqimMXyDN8a9wCrpAzFaE6Mv81k2p4P
	 5ImFUJ5lJhIf3r6gyJF6FDgemhG8zMIcJtqhtVwuQosqCjKxOOEV818sExonshQn23
	 WYbnGolcr0v3WRV75zkVZYm6vdzsI1vy/MSceWXio8Ai42RBIEJyAUlpPyOLIpbryE
	 wEc7xey/DED/gOSDgt1GFzVsmeG0lKHGn7zYA1162PTxVzRiyVYxVerObOFDcCtSgV
	 EI0PtyOxGHzvPpS/AztBvjQQdLtQhmRRe7EjYXHL3WJyGOqEKb71fHuIr4SVSC8jKe
	 PaiHN0v4GTGXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E50AC32771
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 12:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166402325331.2829.2348531325460982572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08c216d8344cdc8a95511a9e39ce6459354be2c36f87a4803aa78461ddfe2eb7
Date: Sat, 24 Sep 2022 12:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664023253

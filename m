Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E00B62F2F
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 22:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 753B9C433D6
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666736453;
	bh=L1SklgqJoUo9qN6bnb1m5AaFyd/h/0SD9pM1BS+7kvI=;
	h=To:Subject:From:Date:From;
	b=V9w1KBT2VNH4KNW/JHP4qU7o/Eb0TGqGuOUpsCrfKVm3EqZ9nBsqZ4fiNnXQc6sIL
	 khr6u10bX7jQ+JSrEgO+7tlgM9vODwq9WcC2guzxtXaQKkaNHudt1z8UcMJy3NdyKE
	 hgW8kvvW9ZWsVEv2o1Sq1jrMEIyJrvnRRDWmdN+BK5ZUgyt9xUn/6SP3y6Yy+Q0fqT
	 f6Q1pMqvGFHRARxwwMtOHaoMO/Rz77LFmnQbjIPC7FKkhQbE7V5cKOFl2zNLQo03JY
	 n15om5lM2QOmR+LQDIi+KNSMnFYExG1tGrJ6MMX1PzXTgOOyJfQSy9etdNyLLc+vR+
	 t/qRG/6/iVBVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B4B6C38A2D
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 22:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166673645335.5092.8169245326895521074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb20bdcf4e51cfc0e1ea207ffea62b33f293aed75e6488775bc10c5bdd4670bc
Date: Tue, 25 Oct 2022 22:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666736453

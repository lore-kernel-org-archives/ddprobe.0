Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5203D14263
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 19:16:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C47A1C433C8
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 19:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695842168;
	bh=0AbMvOL1QNBepFHiU2endRaZ0F7zU6SDmIyia6TCPTo=;
	h=To:Subject:From:Date:From;
	b=piI63vpgvOH7dRMSVtpBzFuWYxfWoVgeJWmcgPpNOKbIo38dHY+qNhA4VNHklrB8f
	 7OWgTNxWr6r+8D81VP4ye8ViEXQAKR5EJmkbZ+c+6eD2SNoganIrKpIEbD977mRWMi
	 DtpeNqHhYHyS68Ktsl6gdbfn5qIaPRmv1fNyn9HswiQ2xvdkORY7QTzbX/eIKZBKrl
	 fOQFJzzxQhwrMSnQ6CSDjlk+MzocEVicoOLLqiX/ezXHaOFseNk6bfCG2rku++XGbY
	 GvNhlxqxE7FqysY6y/2q0ZZmhhnLlZs3XPU101m29+lNrikw8bhbVOzDOyc2enyKiK
	 LlaekhwnWChXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8886E82CC8
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 19:16:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169584216868.9637.8020327350342511294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3415008e32057f956883a58ae05e3f8b8718d26238ada734bb13257d9c6496fc
Date: Wed, 27 Sep 2023 19:16:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695842168

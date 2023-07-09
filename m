Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76FAE1FCE
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 10:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D58EDC433C7
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 10:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688899628;
	bh=CIf27EcoR2USMecHo0b1ZF7+vOY16K5QVlz93DYyfFo=;
	h=To:Subject:From:Date:From;
	b=L++7oKV152VuBm31oInqxqxDDt1+quEqn2jtB3M3hh7zR28TZvYMsEDuIVcqNtxjZ
	 K9eYQavNZm4ikeh7Ap1Cfy3Z2j6ofWAwS0CIbF6ui3Hdmz+cQgx83PHVraoIvAheu4
	 9Zvjf5GchdbaHg+Dw8nnIJzDQxYARsHwtKlFDU8GS5CIrCBLS60TfIue2lJLImVBov
	 4auYV6gqj3WODSPGLp82V3Mj+SXk1vTFYcq4X36ssNdV9WirdNJaW3DFHWOVLhV5M8
	 /OdyvtQZUoHIq5DjhutUhGnDlo6gcoCobKOYJEGoa2d2rK64zHe7pR6q0/IUIPCFzg
	 WuIiBHLu1/b2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBCE1EB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 10:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168889962876.6396.11457317040856803152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8acef86dfa3cd239a187448883fb60742bd39a3ef8a1b0f626d4e0d7aebac499
Date: Sun, 09 Jul 2023 10:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688899628

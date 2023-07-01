Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6215F3C3E
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 17:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8886C433C8
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 17:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688231648;
	bh=whhwtTNouATNAB1Qm8j2eG8FsTOWYzkimGPf0ceFbEM=;
	h=To:Subject:From:Date:From;
	b=tMdeIyF4xjQfHJxjtI6M9q4uHNVoE62qiy35SwlQmdyX8wEozUzj/kzBnWeR8L/pI
	 Lkxij01qBXrXgMTVOM7BrhrlmQSQpTo/KThjZzG9Js7hicmWo7NxWCeVk3Fx/oMdW0
	 ojKfnkKPg6DPgl6sxGWelobkRQLP5hsxT/dpwymErkBkFEiJtQpo3eo3R86kFl65WF
	 c32IxERXETsYa0F9uKaX7noe2rdPBNXcV6IpqpjSe4U5r+A6dwX8slguwRYrL0eT0O
	 7gqTUngX/TendHO1OiPtXKdxlZ6i62irLD5hsTzEaKA2am4KaiCnAne/Sq8fD+CoK1
	 CGvFGF130EQtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8A76EB64DC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 17:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168823164874.15028.16741989957786825409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00e46f7574de90d8540d28b3e70a9034c33d7681b79d5ab1cdfefa18e3d82822
Date: Sat, 01 Jul 2023 17:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688231648

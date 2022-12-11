Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA51C2912
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 18:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 821A9C433F0
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 18:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670784687;
	bh=yQYn9lfyvvnE4Mj8DnMTyu2w1fy6CfrN3KZ8AUnyM/k=;
	h=To:Subject:From:Date:From;
	b=stZZYc0/IRezZFu11X58cHptKRIzyU3ee7tzvXhWT4zIpnCLTiVAA1gN/GclyYcJb
	 8AWrWYVxIGLADw1NB5mgZxTzlGZby2R4+k1K+dpXFU2zhW77eRPBIO+wzsZ6t0132V
	 D8sLNVIVE2ohNjEv+RpUBu2TBxyIyCWlDhm5on25bY+/VNMmETr6BnJwUWUDYS9IPx
	 9F5qEKV/FcVNxviwM8iOm4ZCdQssIlbZjYUrF4R4T8+cqS72jEwdCJ2Zvk7l+W1j6D
	 e0wmIbVygvqBDQ/bAZdlzXcmT1jJ5oFaByzrV9Zvow5O52tnlqEqyKLDDKViR/yaHw
	 7kcpLxZnnBj5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64642C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 18:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167078468740.7751.156051750844062530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3414f14945541f92f6b0f782782be668c938b515b968ee3bb1633c846cdd655a
Date: Sun, 11 Dec 2022 18:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670784687

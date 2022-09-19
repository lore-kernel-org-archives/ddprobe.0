Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD4606AA2
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 17:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70B49C433D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 17:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663606853;
	bh=ZLzu36/rCzht6Pn65aJYAfKEUeohn6it8E3EWTNn9vU=;
	h=To:Subject:From:Date:From;
	b=hpqE2GQwdcewQ0o3L2XMsSnpQ/NQgq6dc1PxDcVaDVE2EdOoAGHe5jEDKUHcdd5Od
	 GVAW/aOk5ubbYnfOgoaaJDVm5tmhG7Za+H5urbaO1wrRroy7crZBGCwTJC8dIJA0/L
	 ikzpNi5yXOfhqJP4kwDPUs8m4HdzbL7NMmuX1McguoH/NkmLAiLsXHRL8VHfF+O8nA
	 tK7dCdobNabmc+GD0RCL9acBg+VUT0KDWbsK8RguxmD+d5A7L6rgyuScq+x1HRm491
	 +B0cb6c9o1Nb7Jk2qyKEK58+aInreBruAlynpL3aQfAhLK62s7zsL+lmT7EBcUCCob
	 dAEaLTF+bsopw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58C7DECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 17:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166360685335.32688.6725636681302640077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 246cc405741fcc54236c214b1ed9578a452fd3469be3fab16cb928c89d7b5eb7
Date: Mon, 19 Sep 2022 17:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663606853

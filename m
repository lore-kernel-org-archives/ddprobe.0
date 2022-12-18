Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D344C7E
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 09:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DC7CC433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 09:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671356487;
	bh=dX/vUR61OPt05jQaSwbKWD5xOZem0InTOv/invbrUEM=;
	h=To:Subject:From:Date:From;
	b=PB8DlbcAefRbWU4a7tanBNbx62d2IfJT4UZ7gVxmUszoEmuHn5r/9nqyN9YfAW/ZF
	 bhufqLkkh/V3o5wCwLKB/WCPHw8CDcSnAX0S0zSibmkCgp/xfWALXjl0BiakIfZS15
	 Nw4e+NcmMyC7fvyAtAlcX7DOjYNadyddlSd6Y1MhSuVAkY/F9smvVsQsnwyrTrkbK3
	 BnrbYoaPhoBIG3KCxgej56d2szRsAUJHaZOLhABdSGObSB1N7qcttPEOpGlSejTldF
	 x433e301Nr2a9IR5Hu+SBSH+Wy9yP2XLeNp/BUk4g5cO8O7ct2GnhXcpEj7yRWYGk3
	 1RVsHOdxgeibg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60DDFC4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 09:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167135648738.17426.5634644655862037523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41a69ac29e1ce1ba2e808a00d3b7d74068ec50484a6492fc5a0a44619fadefd8
Date: Sun, 18 Dec 2022 09:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671356487

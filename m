Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C03421103
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 13:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NgW+2J5x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80187C433F1
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 13:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705152496;
	bh=J6NvpQ4eDxQihuMrppmBwsWUwrrWeq3cJhgmMvNOdps=;
	h=To:Subject:From:Date:From;
	b=NgW+2J5xGDSVtwiowgBVApLC4r3b4xv9qIC034BFzikxlnMuidCmWZ03FaQWbU1Kp
	 dawkoCt7OklgrbExSC7hguH7hXkz6JMSoutfFEyF3OVgBRnzM+u03C4EvvNA+NOLPe
	 dtMHhksenak/Q3FTqg8x5hyOFP0OjersF5k+/lK/ylh/uEXIRmk1pNE0taSvplD8cT
	 zEAYPZiOlACzXamw1fpv50JWhCjRBr/gYAWtCO2W+okZQMGfNAhVLMZ5KphdJD7m4y
	 hY5/LeUfIw4Y+iWe5Ou6TlQBmtXtRvWrHph2jC6hg5pJDOd+hNiX8ymYanAnqe/MFJ
	 +ww+O7p/6loGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 614C5C4707B
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 13:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170515249638.3114.15070378480471254709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6ec33d34241368b13965fff2b249bd1783847f9d0d4f4e651b898f610b2ddb0
Date: Sat, 13 Jan 2024 13:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705152496

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DA89A5F
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 18:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D6LxUin8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 820D1C433C7
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 18:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701196096;
	bh=q1kMZFSQjPajD+A3VBrlMLHN0/HifjTlAbGxOD02kus=;
	h=To:Subject:From:Date:From;
	b=D6LxUin82Kg0t1aQXFRt75PTIlCzDGlbvX44rY+NFmVs01idSLI66hjhhpUYWOjZR
	 qhvOagXTNT6xpPN4BYc2RtkBZwSJMd4TBaWjuJsNE5W2k6bwZS4jwqrTT6Xr3IsQkI
	 zooh1N1VDM21UIn7mN7Q7PthEeaMvmykRlbAgTqy5xWoh1m8isLa+pVLENiwM/I/JE
	 Fe+7V8R6GDBHNoQ5i3zwaf5BSdjY5PAnAa+40MHdOheTAiE/zEy/0tUgnmRJ9yK5XJ
	 avvCXdY2WOIF56L3KyimkH+MVhAFbJw177mfvkFMs0ov2qTFXDsw5Pj7X7sYs2AXUd
	 NxWli4vw30NwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6687DC4167B
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 18:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170119609640.30654.16819162288733050673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aee921975c985525c932ee446a3968f1d3a0a3f0b11c7485cf1cff816417c77c
Date: Tue, 28 Nov 2023 18:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701196096

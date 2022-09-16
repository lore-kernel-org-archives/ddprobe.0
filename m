Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8AC55CBC
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 21:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B15EC433D7
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 21:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663363853;
	bh=or2QUi8VEaiqKv131q4l8NgLh5CUKwSKrMstcvx5Aqg=;
	h=To:Subject:From:Date:From;
	b=PaXV08v3TGpX6pVPqkDLaeHceyEufPtn3foR0wpl5TRFlJewDwtIMIxqvtKKIHScB
	 +OBJpcs2ckytILv2nJ7hiVZSP671FFz+rEtDor7imj2fjhvRPq4FV/Od2p11lLtPJe
	 QK/kAIlAz61M/O3p8ByNhceyjnDSfVKBocFxy9ZwCduoJSc8TsEfycXrmG+qCnFvg/
	 TV8t9LAVgP74LEpoNvdknmEX/OKeyGe2qVqRsWCEisFZW9+I6Ghzhx2eWdyM5/eGeP
	 U60RcSv3HgSdMxWgZUR9vDhn8bPoE/CUhbNwU3y3Qh5MpEEwePKhy5GnvhMMhBGLJR
	 6YwqhZfCu6+OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59399ECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 21:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166336385335.17283.8491019728246063677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e5c680d9f63d8b2293a7a9ea93c5e9d7c01d26186a6f49c75d5b6fa9081b771
Date: Fri, 16 Sep 2022 21:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663363853

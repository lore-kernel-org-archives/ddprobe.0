Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB6F3374
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 06:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94A28C433D2
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 06:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672725687;
	bh=ERXOzzanzYyrb0TSAlG7YE15VEuPGUQJQGYthxG1aQA=;
	h=To:Subject:From:Date:From;
	b=oCwz81kOSTdgXfccdOJzuKjFbs1kLY4vITSM5sRUvmo2ptUcDM29ebnv4IGPsCQpe
	 iJjEQGUFyfBPVUl/JG0iakwOf94EY14k5UmiM/msLxAipziVa38gT2bgSapPEeApP4
	 MmwFhCBiwwiZp7kY2VgY7CJYK8S+IU00ZPOQngK05MMBfNLb/Fk2jf4oCG+0SgBkcK
	 JYl6W1MsDEVnYaPLWnkBbJsczfYtesAMICR9R1Zh0o0hUpR5vO+jjrOqY9qZftjTmA
	 c5VpPNt4Ep2KEXbWepBEh0yIBGztsvhd6sxDgZZUeudwiFT1X3w7Rbx+1WLffnGBLP
	 2Vv4r8wzlzArw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A1F9C3DA7D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 06:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167272568740.7977.12540738288329492881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0812aeba8ec93ddb9d38b10d8dff1480c7232eb86b9f9797b3ca2a790a748598
Date: Tue, 03 Jan 2023 06:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672725687

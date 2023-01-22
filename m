Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D321367
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 12:22:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBB0BC433EF
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 12:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674390125;
	bh=FiaHHF7GOK/p7lqqCB2pCHrkWsc0UFxmPS0119PsWaY=;
	h=To:Subject:From:Date:From;
	b=OZkXbc8UsRGafRHbdpzABZJkL7BsEnS4YHD8T4I5Z39zOp1Df1kf46XAm/G55ZXXv
	 zsIF/IQ6HNC+QhwcG+e41NfPRqZPlwR4GTM3dRtPgd3L21KGIvh20A1REWISlzOb9O
	 +UFGI3VmfFwsupvAGEbj/sZD1HjQEOsOG2MM6AWzSWqL8wWLDFSg0T2qlodXJErpZA
	 ftFF50N82xHfVK5UMiYRN+4zaQByPD1YNA0xDP+bCbNYkoh8Ky2x5Eu4Xu/VV8OAp4
	 hzd/szwS4QFSgZqfto13mxq6De62atPZ1QIx2uHR0xELSxRFybAAUOBw9zuvuJLbOO
	 TleOOoChZ8dAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3572C54EED
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 12:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167439012572.12562.15490943602135722773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88f3b86ee6226389298f9a89eb1b73bfd07161f497d25962acf3c4acec134fc3
Date: Sun, 22 Jan 2023 12:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674390125

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7F3733E4
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 13:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8996FC433A7
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 13:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671715287;
	bh=IZS8I/yBPfscJyqkEQPhpoHN1wEscPvqYM9rzb8LZ58=;
	h=To:Subject:From:Date:From;
	b=nX6bOLbmCXP5vgUihe2tTNzK4ZU9ec/RMM4mj1zV2LOlSqcrnAwaXyv1bRKsFDI4i
	 PDmkf+pIQluxJgHE2harvjWiN2Z0a5GKnsFHBOozzNcv5oAuSENY0pRpS9jbN7Q69M
	 0kS85x8TF3MxzXbAZvEFEG6hXUVKbZZ6TM8MXMGOU5d8Ee5pg41xvesNOpZvUdnduq
	 rZtOnxBhFkJYSYUBTK2/GtUp7OQjPoJYNeesWgWxT7VosVsc0Qpcj5wceetegH9mgE
	 axqIpu2OaZlBlUEB2AQPmp2Al7KckamW9LpcADXuz+Iq99xldLjeejhAxp2mILKL+g
	 z/jB+W3oe2lQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6465DC4167B
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 13:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167171528740.1143.3246578928336499944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 417c612f7fe5c96f0f2efbe29a946c9739e3204f500242b5f73408901c3fefe2
Date: Thu, 22 Dec 2022 13:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671715287

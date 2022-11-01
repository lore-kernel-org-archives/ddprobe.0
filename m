Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4ABD365
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 06:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72BB7C433D6
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 06:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667283654;
	bh=+Yzsupkc9SjHxmRSPl9CPuvTwG0dtdbpmcPWNmhdmB4=;
	h=To:Subject:From:Date:From;
	b=KKp/m0B1328ZiiQ/SJP4yMA49Mql3FThYb1Rd/i8qntnuolQjW8nATEjGfrar83JQ
	 6hFFeX8p549tfxecHtSjyN5Zu/aNHAatFp7EkCE725SnMXmB81iqSRoXax/COwHVxK
	 VjfbzLqkBusBcyn0qq36Wa6HjyK+O3W8tX4JznTc+1ERI6P64IhugeFyf7XZ9+xYj7
	 awhLRul9jPvzV/vfBYdVbC/PV0LwtTheGNFLRJeOwXgDfVY8VZOz9Gz78CbRZpuc/D
	 kHOjC/wJmrxnbouIek2Sc7Vnkzn97fWfSYrX2UUCv1pA0Pl05NSJMOV0i5eMqZptM8
	 Jiz5lT6BE6SSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 559EAC433FE
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 06:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166728365434.11911.630236264443593402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 984875ea0eb01ff4ef26f8017bfed46c76de389d3064dba270e1946d93142049
Date: Tue, 01 Nov 2022 06:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667283654

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FE2D185D
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 05:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE9A6C433C8
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 05:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693631048;
	bh=Fu436eDyM2QAFBRw6+tK39sit4KTW8G4clLVtcPFiv0=;
	h=To:Subject:From:Date:From;
	b=U8XhVpvjKGhNlBsXI13t6gbP2+ldhhcWOmQBtrKTar93vTqYLAfhtTK9IfHLQlJzr
	 g2H2ysvgFX4P4DhleYq2NJMc380uc/1+RAAI9nUs7IyoldPmcEaq9tj2lMZSHw8yck
	 9mV5dgtK/pmvus52/VIgFty64z5MVNJmKWRGmF7gYdNsi3mH8rbC5fMCC86c4oEJVh
	 T4unTgoDmhuC2Lj3dfFuK/RQmvebsAlBFQ6xIkRPut7PQsDNOuMaNnDMkPgdHxpYjf
	 salrNhySJ+YuYuMffYoxF+yXGJ3weZGaGai9XxqwbgRQg5l2SGla3DouFHFzDu6T88
	 CmRcAeNk9XFrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF01CCA0FF6
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 05:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169363104868.30439.10989416392343246198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96848466e5416cb5e59eb0a37bef0d7bff65f21b3948bd6e3002d5e76b2307b9
Date: Sat, 02 Sep 2023 05:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693631048

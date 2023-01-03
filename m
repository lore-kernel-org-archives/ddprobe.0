Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4CFE20E4
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 10:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81385C433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 10:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672741287;
	bh=ADOaV/RNva6LvN6cOvVxSOJovN5a51OvJFuhAzgvXhk=;
	h=To:Subject:From:Date:From;
	b=lIIQeYU5B2d2w6adcK2Ww+QiUQ1SgCxir42RmTRCVcYGutboEGMc4YFUnkP3Nb5CD
	 vinYUG8snj/tcz9FAV4WEEuqCa+B1lcYBFgZO1YOgJjt0rfMJnkNr71lwo6y820zdU
	 cOE2N4/G4mKkS4gBEO+kEw2/YhZi6q1c4lsa1E28LKrcgDYBUJE3hGfX1FzTadvD1o
	 oASsdZL9Q4rTBoVUjtHa73ZgS1Lklc2r1krIMHH2KKfIkx9B50V3DveP8P7vFiJBnf
	 teUnWCylPjM2joSeZBHWweQxOqpcQj1F2CNZxQPU0iilE+YvK9paiLp8Jl6G94oUaj
	 9f9tuX4d4BCsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63D88C46467
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 10:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167274128740.19815.10980292433293887070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0dcb7457a09aa8496b6740ff4694e34be544a679f3d7f4c006e15a1c0905224
Date: Tue, 03 Jan 2023 10:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672741287

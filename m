Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C93CD2F48
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 16:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 822D8C433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 16:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670861487;
	bh=AMnbQJD7fZpgKAWA+zilUVJEJkjHqgTJBt/+5yMqUlM=;
	h=To:Subject:From:Date:From;
	b=AJrd67mcJVVZIBtSvIq92Hp+E3ovwUNnatx7Yn8/f2uF/T+OQ5U66rq/kXT3f1cJK
	 AiVYSjQlh3POo4V8oEg+3qprqYQC7n1Jw/XXtNknQigDG2Vd2cs7fdJ7EA77X9wfNc
	 PJs/PFylZg84X3hwe5JL2F/p6CAYW5s2LqGu4soEfeSMH+voPJkAAlKfBLRGVi2PIv
	 GkX39PdghOiGwgeIqTGnVuabopcmfo5GQ6B1L4gYdKJA6IyPTppthtCgMEbwcDhm+c
	 l0rYBujKtMbN3GDJ8fiuH4sWz/rk3mEwCjyCWDGrlX0iiO5iRs43R1dziliEWMSz7V
	 MvsKpjHEFQanw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65F7DC4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 16:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167086148740.14403.8597298936237355201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abfb847286ce8f121b58ded906e18f7772fae5ba0643fe018b2975f847a3b551
Date: Mon, 12 Dec 2022 16:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670861487

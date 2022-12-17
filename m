Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03EC4320D
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 18:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FFCC433EF
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 18:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671300087;
	bh=FQzIuRt6uG4kh5ycrwYjT2BNnUepjIubbblxvoE3BsM=;
	h=To:Subject:From:Date:From;
	b=UyvA5GPaBJZ3bjlEAGIrSrCsp++sGJuYeUQeli2/qTJA44GHYj5u6f2X2ldcHus/O
	 9BuQoaNdU42aGe7OfqMQHzJsxochd48aBqSpdtebGd54Ta88gQJ3P8BgnwhwuZgdlK
	 Z+LqwfjN+Y8BgJ17ij47VEw5dVsJD+gIZ3nxE8Hx+yz81K7CdBwryVWJoTdlqvurWO
	 EkwtusBA9ao+eMC7nsA/r3NWa05M+/5Y8R4Z0d1PEUgfQgkXR3ACNaePORfPd7I/gz
	 1F8JVgjHmryu/2cqNN3aro8XUkNJ7H0EgrbIuby0zFU/RvOYfMc4V+lN5UI7Scc7Ck
	 Jgq1heS1qsTZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82131C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 18:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167130008752.22774.12746439494514446436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61fdf5399063bf247714081b7fb52242818ad892a0bdd317af6020f6199573af
Date: Sat, 17 Dec 2022 18:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671300087

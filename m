Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CED5A193
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 04:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D8B6C433D6
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663995053;
	bh=zZmnd5//a1g8ZkOvOhfjugXFvWCGaJpSyhsA5rwN8j0=;
	h=To:Subject:From:Date:From;
	b=BV40yn591j92rH0tA2GqswJIzUAdE/eN2RXnNlgFTe8E4Bmkb63P5cq8JQ4qu0Ndd
	 WvWqzH50Fg4TUfJBSEiH8cAq5zmj+p4jdwdUpqTMHYNbBM4ggZKG1xwCWJc8Blj3Mp
	 deFkfOwZm356ADS49bKivzJFIK/hP0kVMyef0WeG9AczB4N1d/QQJ8E4ylRUAs6Fj1
	 Hnzkt6J83mT3/8Fn6fm8A/NJ8pMC+RC87Zq5n8b5enN43qNb8J/ZdoUd4CMp+wlQkG
	 eLF5AYn29yCqG84aykpSsBUoQM/KKBdhIGfleXi8HvsYF3VG/OZsFcQbRL5gfcjceb
	 Ae3ztsgQ4NTCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5351FC07E9D
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 04:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166399505331.22662.10298443269460676235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 828d5d3f32bedd2ad558cd7d4de5deb6236c40ee4d0fea11c4d409f4c44b8be6
Date: Sat, 24 Sep 2022 04:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663995053

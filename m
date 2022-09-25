Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDF8920EC
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 16:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66937C433C1
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664123453;
	bh=0B27zovDS8N9eZBc6rU6CjSoKA08XTguP9PUdQUP0es=;
	h=To:Subject:From:Date:From;
	b=tJQ3ty2Ifssbf/u+hSWB12OOxytVpXtYhAnAypiDJ3IuU0jF1xAOIqN+D/qKdgMe/
	 ydlXcxEi8zxI3oW0pkeX7F0wV7/vpE4goDe70k/xudxN43oxPX56pjusPf9r6MhuQd
	 7uYu7xlg6yrb8/sFK7ZgNC3XdcT9a5VF03ocrawCLd5LmEZuk7rgEweCnDcFARpUQF
	 IUeBhvlKdsogqW5hPRqKygGiYMmZ+6hn/VV6H2PkNG6ho6THLBwfB5Kn5ifUY+SN7I
	 /eLtGsObJyIBW80CInZw2C9xUqiDjeUjQobQ7OA1W7JwyFsLwfEgppC9AvV3Ra5Os3
	 ejEqw8/WW8tsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F541C54EE9
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 16:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166412345331.11332.17783233677560077788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68d2e0cc8250130c914d01e5f6eb54c5d7b091049babd0a170692a36a55fb527
Date: Sun, 25 Sep 2022 16:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664123453

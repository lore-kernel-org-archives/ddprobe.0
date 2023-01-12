Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CFE462F
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 06:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF9D0C433D2
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 06:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673503287;
	bh=uRxfxqg7ONw2aIDnFJ9myb0Qr1Wnm2+nY1qGqgGoU9s=;
	h=To:Subject:From:Date:From;
	b=arNmOC2Oh8qXkM870DaRqaX93JJPkUHgA9W+cElo2EzomM8ilBxMePUHru3DhJEdI
	 ES3lXrQ4B3d3EPFEpwkYnjqO/y+3hO0fUMgh/0fKax5fRlSyLeUx/6KT0CK7DLQHj+
	 L81Wdm245hOfHJ2yYLq81eztGsM2TuQIEYJ/upC1Irrmb7CqPDoOnIN6P9XcX+9mRG
	 VXv8S3+0Qpyqu65rQ/TPCOIOyCvUsowZaX7VHpFqugZbCoGeiyENcyklxEeZIs59iZ
	 Y0Tnve9OcWTKkahSZKw+aODkHQ393sqepgUMP67qWTZDAa0ZAHNALWQH0nJbdtOKHS
	 VXKB/2RUYmbkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEDDC54EBC
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 06:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167350328755.1143.1996993777052102623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52ec761260aaef23d350c727b11aa2f5642b6920577f311207c4af8b1a846ec7
Date: Thu, 12 Jan 2023 06:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673503287

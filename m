Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33CD04C6A
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 18:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7DBCC433D2
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 18:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679338025;
	bh=8FDO8C5xKaMNnCTmdLs1nQq7qpDZmgdAHwZqss2cxBc=;
	h=To:Subject:From:Date:From;
	b=fn0HBjwMVR6m1TnR64Vllfopp+BVSTA+XMT/+HmC8lDUwaRSGAsapPvpje7A1tysJ
	 HVbv6as/jKPQNdTyGqtjACJc/dooew21kcv9HLa7umq/0FcNLmIqcoJKxxEOc+3R4i
	 /62kSVviUiysXArZE23bqAFGJ3bqjsYmOevcWFh64hv4dMvzqX7VOIHlvkeYYtbWDB
	 vOCdTbo7R3//Jreg+sRyYOV+0cAUtb6tIAo+928IMQ3aSCuGrzoG0tKEH8MIHTukYa
	 KEJJPbu4KIckMCpg0psQ/A2ySUYFNim/RrzfrUJtD2h2pBdwEtzPUX9Dojrq3JqM+s
	 SF8GQvz2QsqHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD2A7C6FD1D
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 18:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167933802576.8746.8656767332183390768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 794f07db2f10b3fe2b9684451e5390e6d277d1d6236699231d6c6638bd5930f0
Date: Mon, 20 Mar 2023 18:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679338025

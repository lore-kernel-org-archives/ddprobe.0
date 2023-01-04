Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB0A37F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 01:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C17AC433EF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 01:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672794687;
	bh=ObYSK76L5njCmDHNX+rvpbFtADzDQ0PS7t0xfARVbpY=;
	h=To:Subject:From:Date:From;
	b=VVkMSCk7hRcHeJdu8H3U5YIGxEkwxFNpfB/aMzCQDficw0b6gjf6Ql0zbGzbSjaFh
	 r9DhIKkHcbtAzPSUe1KdNl3tApBk3vzPVljg2KSFXY0RaljHB9PvxhpeLKpalw3/fl
	 iN3HDAKW5OzuC34VHey8BXQnV+Q3u9qNK7+NX0gXpaZCfCjTi28mewA66HWD5I7yAm
	 aWZd74DOU8VyXFUn78nzbesPEa1qZgDoZ1RdIYEWOdR9Llw/w2Ul9TuKyC2H5C8XeH
	 oEc/++FgviPwMuJVY7AIO3JMI/bbkKbDxCFa7HyE2EBEkED5MHw9090SSusFsGChHN
	 4H22X3ngxhf8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62FBBC4708E
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 01:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167279468739.20298.4626539860047041701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22fb4816e328f0dfd6f9191f3fd945bb383b54aaf98dea4ce9144c73772dd181
Date: Wed, 04 Jan 2023 01:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672794687

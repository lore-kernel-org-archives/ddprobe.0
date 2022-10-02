Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9B8123AA
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 08:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D12EC433D6
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664698853;
	bh=UhoxGwZIKf2OZoAua5zcP57R32Q0z1o5MYlFtTNsZXE=;
	h=To:Subject:From:Date:From;
	b=FMMoYDSi/llqLTJgKGmLB1+CvSMTUYpEUGRn+dbjN/RTm5Gq6xWxZAlLQkE9pAvoS
	 99MCFDv+XqCi9cLlzdaCiqfID6ZMaFF4vvTGPHW/Q3eVwSkPlSYx8t+TfCwLWSfchr
	 lq52R92o+Uh5FEGMyHPXMdOWBzi+BLINcRqJA9GkMP4fNOigAJDuxuZGw2m2Shp2tT
	 HijNgudT/zgj661w8klLCHVa2fPpPUPnauZeuA7V5is4xU2yTZh1waC9fbXr6XXSPa
	 6bM28pE+QZPeN7lG0MBPSOtHA/HfSd7wDpuW+y6/+V5sAkbnrcw0bp6LuBicxx0UdY
	 MrDUnYiSQjgYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 513C8C433FE
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 08:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166469885332.16316.10547406696863707478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33bb91375ba879e89d21e80007425661092590e935ab3e0e436d6f309fd93d6f
Date: Sun, 02 Oct 2022 08:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664698853

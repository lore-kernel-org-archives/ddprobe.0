Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF1FC2585
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 13:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BEC2C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 13:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670850687;
	bh=srk4zpApuq0dH+/+cjn9iDPeNlaXaVXMf84MvQ5GR4Y=;
	h=To:Subject:From:Date:From;
	b=MuCCJEp575D9JH88u/0XIfCALZYARSMm2asTUu9uRHTbZ86m3cMjlxp1YVIGGKBg/
	 EeOeQtVVcihvKhGLBzC0ge9TSj+W9hN1bXC3sTfD0xV+pwP2dwIR6Twl+aaj4SCuJy
	 D2RivzAVLO4HnbZ1l+wHORGGTS50Q/O/phgIECOH/aycIFcZwgMKIIwn5aWNQu0cF7
	 Ch898/1+SUxwOI/VJiKNANez14NDQ56DePZwDB2PYQcXY1mSCLrb8q9urTq7mY3DTV
	 w+CSwYFimvt+QIk/23mxnXXiKtAxTx9zY6K7kUSuf7Z7LO33SG4QN5tVO4/lLDZ9pN
	 Q3wgoKa6MwVSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6242AC4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 13:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167085068739.19259.4289759735773912260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baa5b4ffd33413f5d55636dfe7f771a0b91a4abf8db4fc2bf090f876d4ace483
Date: Mon, 12 Dec 2022 13:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670850687

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1BC8376
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 02:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BEEAC433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 02:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670379054;
	bh=jPJ+muauIlMXxO6NZ8jOp9L/pA6TmA3SFmElmoU7xJs=;
	h=To:Subject:From:Date:From;
	b=QBov7ALHey4Fe5eVSIwCfY/9rPB7+UOuDeLoy8xnloEfn7qyG8rjQn/Q+evF8KRSc
	 jWlZwW8evlH7VO85C1W8ltjGPz1gmo3miYB/4uNec7N7VzZv2gjTypVMUfiKXXB6eg
	 t4oC+ROvkvhOQtTHW5aFHWNj7MW3DcjQX3R18i5vmM/PbaQCWjG4IgQiDtOndPtkxH
	 POANtmunzNqjURDeYTgxU/zems47vofz92QCSXi//f6OcAVC6L0VOiKbUhCg7N0dP8
	 Allsj/3TnUGuD6insmO2HomKuO/XNIZQJ51X9uyVnCyHarQbJSxVRDQbSVlrytmtJF
	 jH2mJdbfb6kjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 583A1C3A5A7
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 02:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167037905435.10475.18368485912257210508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 077fae18656d307b5c800bd06a0fbffc39ab10fbbbb8cb0806841d030a62d24e
Date: Wed, 07 Dec 2022 02:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670379054

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFFEB613F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 21:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81DFCC433EF
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 21:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671138687;
	bh=DBTEBICm//uT7n7jspRICITR4zKQMKH/WEElzkhWmBk=;
	h=To:Subject:From:Date:From;
	b=richcVsYGAUmSUT0UhdtQYzlhuDJMj2vklqg+UYNmnytm7LNE0dHBwZ3ZCDxhilyR
	 tI6pPfiRjmFSrmiiYH6/QDX1PXAWLPg4feHVR5L2c0CHMi/xoFsGLG9eNQ6n5/FjL0
	 7cqHbdPuW1FFi9YJYyC7pOFuV0lZbHklzB0L16c4Wj0fKW4mmyu3Xk9b4XP+PAGv+j
	 IlevLbEGkG/Z7j89nPWTlj5PL2ls121qsPXC4IQqi+VAJ2k3HAKP/KjfysVJ+Qp1jD
	 30q86+gg5QmRRrTEhWXr8enH/6myEeayvVnsz3C5Q/qGY3gasNavfO2d8YAfXJzRe8
	 Zd92ZaWLPlTkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63D78C4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 21:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167113868739.6525.9923854486168294194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9573739539b4301f9e6643d40456cb6682b59a67dfd1c4f2ccfd5f31c7ea33e6
Date: Thu, 15 Dec 2022 21:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671138687

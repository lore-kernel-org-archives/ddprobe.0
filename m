Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B93E71363
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 01:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 704EBC433D7
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 01:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661389852;
	bh=amBXoVZDR4vDRqkfBtV/Mkpmc9B6JoNZieR5dJ+5c+k=;
	h=To:Subject:From:Date:From;
	b=ecZQP9QhoJxy4drizyWHzlQ8UOhSmCAPEXgOgVhQWbG1goAY7eoxQy+Rb+edCjfNf
	 B7F/In2RCWIdCuwcPZaGSp94O3uQwOLLC+CosZBKHcSbyvcW5vNpKlKIrlgC665066
	 v//8igsg9v4ADW8PrcG2n/V0OCkeJPulLACxqxkqtmkRik+kPXMxQboZWsnr3vodiG
	 xnKvnTy/e1CRH/qsFf5k+D21y+N6aUdC5S6BZcpiMWJrkmyNLxU68Vy+fZEpeXSa64
	 wxuDB8KckgRCujRN+uIxJIeutzsne6BkGeKKMBbBTvLNVhRhAtQ4OgknChCdx08esS
	 bgR4nTotL0LVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58C30C3F6B0
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 01:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166138985235.19813.681831875521490163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ba5290820c541ac92509d7b975588eba28aacb36f9e30b28ff3b23e38672efb
Date: Thu, 25 Aug 2022 01:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661389852

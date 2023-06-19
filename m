Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69896C123
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 10:11:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0182C433C0
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 10:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687169468;
	bh=HwYJiBcYMt8PLdNuK6E4oOgsQMKolj81ft7TmU0GM9A=;
	h=To:Subject:From:Date:From;
	b=FFy6i+2wq2rq07AzwU5mEqC4aorXbk8IitSAqs7oNJrV2sMpIyvgNGXqok5Jkkszf
	 JP8AIpju66ybsAztXXCbPT7dKlB4z0m6fYZP8BDykuArctN3E017U53ZTUNBk6/amn
	 Oj2AY3JSh9aqO5gM4uJ9hkLKCn/WDFqBkF64CAvn8gP+UdMTPQe85rWq8VyleLKfKY
	 wpsh+ZcqgSkZ20UohqVLkl+2pwW9lDHCmri/VUUbcppqUqMdmWQVjUpfqfp8f0TZhD
	 yCGMyYMcT4wXdOXtGp4Euk+n+rKIKA3G4iEoFTGvkFJu2KdCQG98UPsgo/38zaqpaH
	 HLxJToSXfYCoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4623EB64D9
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 10:11:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168716946872.2317.14280919829350814925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 188c2a7d960f85fb0239d45f4c6852208714604d236fe3694582a4f2864a4339
Date: Mon, 19 Jun 2023 10:11:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687169468

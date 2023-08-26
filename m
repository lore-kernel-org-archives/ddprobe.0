Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6412A37F
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 01:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8215C433C7
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 01:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693012448;
	bh=Kotyhi4FaaPDo5FXwGWFa3YH2YH1l+PlZawSVry/74M=;
	h=To:Subject:From:Date:From;
	b=EaH9Jsnpk7xaSIWBFs61WitctK4Im5ZRBVXetNtK7d0CrX2IZJD9KxNkdvLLShddJ
	 fKqlQtDbJeLiO/tw2/lwBsXTANjrhZXVmijr0v/0EgcgtKJ5wnoRYB9cxCY/ggI1Kg
	 Mw7xcXlwDXILOQaQN1VtNThuq6wvWddIWO57RiWAs98+CpE+3JYXLvk9dZ3YX83qUy
	 mBMS5MGx0INR9IFBd86skhV1mf+s+kPtvnEVLgmP57fCx527TBt6hENXpXk7OpKsl1
	 EkNpriu0aGzhWO4/wKAiJEHyEr5z8JWCTdd97lH0llz1ULF1qCcWR6PNtaC4DoTg9z
	 pgujzYMkHDxXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9E6C83F0C
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 01:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169301244869.5382.11210014319034727593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0acb327402967a8ffe994ec47121f488c97d2452ea14ef7cfcfb37d0d0783249
Date: Sat, 26 Aug 2023 01:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693012448

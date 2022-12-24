Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E80DA3D61
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 19:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8906DC433EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 19:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671909687;
	bh=WbEkmYeD4p1MeMecIZrC/Mpg9upjxayc+cKEi7yUT0o=;
	h=To:Subject:From:Date:From;
	b=aCDjsztxn+CGiEbXAECpFgkf/wAzrmxwd7sN7aFMXVA4UVb1FF1sRQFbokLtvdquY
	 MZmrwT4+4iSu+RF8YSpHjCun3gPLtvVyScR9Tg3tfAQur6n9ogGGN/opuA5+h/4NQ8
	 ewr3AcePP4mSwf09FHOGdQcLYS6ec6tHcBxnElJdHcpjvFF4ZdHdVm18pT3XPO7Zuu
	 AP2jUMLsqDrAuZInQtGTj6afDf3rcgQMmQrmt2FclBsJYdNqFwN+M1BmKCugeM5s7d
	 tfEjTwTApj/vucaKhArHR9lAVtt0zlhsoiQQvD3sdrQHWt9uMBJ7fL/q5RUp0rePcN
	 PzR0VvC6EY0bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FADFC4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 19:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167190968742.32101.9974788722025256705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 491b97f6920254520035c59d9878593a7369063a085746cd905c2c69bd3194a7
Date: Sat, 24 Dec 2022 19:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671909687

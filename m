Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74A4B173
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 00:10:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6F3CC433C0
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 00:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687133408;
	bh=oPzGmoLryXZt5D20J1I2we1HB+byJgpaAjE7IDNiEkI=;
	h=To:Subject:From:Date:From;
	b=Zjs25k+bJnSOhe40EwIrk2GBFLoasbdYwsIxnA1wCWF956AhI56SsReXmDSeI7sb3
	 hgLuTD9IRkVy/Ds8eU/MZKMHMHrfh+TXHDV8STIRAtnCIngYepJ/DCnZWbB71QEr2I
	 kCb7yGnMt0MBqp3b+Mqcud9E9rN39YlACOTL7EwwwQVancI1J/SNPd5ExWgDJx8ESr
	 G76pUIMnlNAP2WUarGxdYvY4xzsyKxDq0HZAyVqrKc5x8cWByPtTJORWqr/KqAtd9O
	 cacdzO2B8AOk98x2slCSaV61nhb2uN6EYUGKZ5yAnbw8TgroBt42ccbXz7hIUCiNUP
	 P1uh/T6X5qSvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5E32EB64D7
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 00:10:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168713340869.12567.9665179767702631654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 891b32cbc4e3744217b2b7873c88262794b9b92ccd692da1706edb2280b957a4
Date: Mon, 19 Jun 2023 00:10:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687133408

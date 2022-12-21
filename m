Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDA28185D
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 01:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 849B8C433D2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 01:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671586887;
	bh=W/P6s+oDVJE5E1I/TxrXv4h3wXKYm10MCIBbexHyyE8=;
	h=To:Subject:From:Date:From;
	b=LCQtW0wCF8sY7aTKLPnGRm/4qtEnKFIC2vwV6flUudf0v7zSXlcy4T3qeWivg517x
	 wvS1wtFLAvz3E+8T3Swyi1Uj48qM7/XKWDi+RNLLP2YHcPdeYs5WzE3ZQzyv5C1ffH
	 3J9QjMmCs7jLOGgvA58oDo31jwB0kqJLbDwTjo//rW38FfsahG4btkYR5xTuUkxYFa
	 5qcHf62mB9/EwzIdvAO0BMV6clIC1tifD4TK7nx+JCayC+R4uHuu4QXY2EYrh+nj8b
	 58ExXjMf6SAjFgotLgX6upASSYS2MxCC2UrRL7a2H068mm+/DJIHryf+Y5ZUTM1I9a
	 M/W7OddxnExnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68F6EC4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 01:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167158688742.28872.17431102003842030531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 271376c03d2649d45ebd82abd1b4e0042cbfa23f4989758f53297d8ecf0fb9fa
Date: Wed, 21 Dec 2022 01:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671586887

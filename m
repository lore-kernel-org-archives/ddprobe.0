Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0184CA40
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 00:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LbbiyYQA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85DFBC433C8
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 00:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699577896;
	bh=YPFwl2Lg+Sqqc64QvhBP9jSnB+AcTEcCmVLUHbKw1Gk=;
	h=To:Subject:From:Date:From;
	b=LbbiyYQAC89zPF67jsSblhPHlAU81aAw/4xV/e97/HAHTCNAcc1TzTD3fYU/Uctiv
	 1S2R9vKsr6dgMwu6KVvYDL031fQcn0VFFtYUCkME63vlTuSL7orcWdAmEO9GfnVu/X
	 6P72qFBnFjIY2EbKpWMYn9FjV+4+YD+AvdAYzNHcMxaTOFeINcNIsBg+g2RmPvlIzt
	 xYfFwjBBGoRJqDMM2zbipleoqjdufPpORtx46/iqBCwlETA7uai6RMfV3feGxkGG4r
	 GWDC8DqsqH0ubq0/xDv+t3SqJ3qkAk2Qe/Xu8p2+naI5xzyjx9ZLeNjm1fgFque1bj
	 G73Iid01Hgnig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 690D6C4167B
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 00:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169957789642.32270.1593808202243422516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec8cfa0530dc7ada7e9e3df557c40c22ba16db5233e86a92cf3682d52fc57a9b
Date: Fri, 10 Nov 2023 00:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699577896

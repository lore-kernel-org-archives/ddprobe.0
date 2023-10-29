Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31EAA17C3
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 05:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kxGfMJRc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83BAAC433C8
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 05:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698556696;
	bh=XezHlXiaxTzVZijJzNM9m6avc/Klkei7riz8RDwe3YQ=;
	h=To:Subject:From:Date:From;
	b=kxGfMJRclHz6Hfuv09JG8FBYgRXdNqUjrG8kqyXNGgYV8Ay1O//KQYrPU9Hqr24ic
	 F7xVq1wB7vwXMXU+AWKVOCaQ70U8Wt9PfDvlbZp1o6KgwvbrnEi7XNaGxw0Jrcp3MN
	 QEsiBUCnCHJWgcY82rOrYUhnc/ZMYVTBI4ngy0iglOLbTr+ubJmm36hyrXFQRVnwUf
	 nIsCzPlV2/34wMYW718O6aJe0sCvJ3dkev4rqPzCBse1RQUtPaa8BFxer27w+bI8oF
	 ayLZx/27KPbmz8Ez2uMew9qsnd2Dum7qqOTPUDLlVvuoNWIwILcGyBvW5dqbVYHy2X
	 HDa3JZdn5qjnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63318C4332F
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 05:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169855669639.24578.12723754206729913871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcced5d2c21797eb5094da6f1ae83426f57d042425d2ec484c493b01a2676558
Date: Sun, 29 Oct 2023 05:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698556696

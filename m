Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 677B410F9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 12:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D960CC433C0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 12:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687867388;
	bh=U8aKVcuENcZAFkk03WDgknao0jHLsBANxraxVduUR4s=;
	h=To:Subject:From:Date:From;
	b=gnzmByAghhXb8XwzJ76/6Bn7iZGRe0YDzbiy5z70Je8nT1papHVQbhYlf7IDzmlxS
	 e2iHAfZxRPGWsHwBNCeP9JLMrGFyyMYyxQBAFARVvQp1ZRw5JpfOGLKleH1QCDjul1
	 s/leB6OTgjvtgZOMpOuvU+ku2/4DWLei2TmzQaZs+78EakEvWHk48fIgyJ9ch/bvTC
	 qhiigP1D07CW7eJpoBpO8R5wfBC5IM8Nff32SBLOBJb6I0FtR6TV8iHqYeb1NSSD8J
	 wuowRXOYz5oP9OMtYD+BG1InvIwvbC39dIGfZKBXN6o3eVHgeBFfVMY/NmS+cmVpi8
	 1TBWw66s6FYsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA372EB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 12:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168786738875.13381.160149060161552945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a525988d08ac4f8788f6a5213603118799bdbbc6ee5ba340726d27351c1ef25a
Date: Tue, 27 Jun 2023 12:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687867388

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300607F1
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 07:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C99C0C433D2
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 07:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679039465;
	bh=OQznlAIJqLrTun1xbj5SfENYjN5+dk8vNaFqA0YWntU=;
	h=To:Subject:From:Date:From;
	b=hc1Lz/xPxbR6QwgdcMbJOJxsukMVAci9RRrTRcVafzgUQRsbsz6UNg7V7jFvPnfQh
	 LAeMyYOA3ELk2IAHgAJxWPIpTdtiEyCdFpNyl67FwJ/RYDAHH4Yn1thdiU+34sEkn9
	 0zc/EFfM4Xu3mSoGVvPbrdAUDZ3DAQCBMsGrPZVUwbQcHYLMOZBThha8xkJ1gIW4mm
	 pdCbV+5NEuQlMjEY0XQ/Tcl3S5ihP90H+CV/fM2K1xnse50KX/k4OOG3sbYfPflmT1
	 vdJZnb7MhitnPUhOz2aQGc/jmI/nBa2P/Dn5R4DgLc7ZgTpNz8L2OFDgFwoi3olDS4
	 7mrGuocRoVPeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3755C6FD1D
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 07:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167903946572.20162.16220578921698878692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 573917824fd9540d379c0d1866f79b0b403c70513f287a10168f9e1af0ff8030
Date: Fri, 17 Mar 2023 07:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679039465

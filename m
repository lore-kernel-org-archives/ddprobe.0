Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DBDA8BF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 21:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D643EC433D2
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 21:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675806545;
	bh=ARp0EkyrjVbN1NyGy66lhkqDXI1kRrIQpwy+qJdb5kE=;
	h=To:Subject:From:Date:From;
	b=GfppfKzHSEci5oTMMwTJ8KZ5woXvYQOlZOce+C2A0N6wS0IV36AaGwZILCOsdtmmP
	 lFT+gQilKhKZKcq4DpOrlBk6QstVlD3H8MtgoDSSZ8RbDuUdwho5KO3crFWGzQ3Zn5
	 0YYaxCIMIHVGLx1c7c+OU4RDsgnI4EUD8xFBC4S0Qg1m1KobE08k6FWGcV/5+Jt1jD
	 m7Hg66o3BdEA7lDPUVXYYNMXg/IwHFSgYXNk2eenAB4YBnQzbbemrQYn+fJeGOFFGd
	 z/xY6lcdsSKfzsF2+QRAssS0urdWVFlrqLEpQRpWWciMDzEH6adpUkT5emtqfgHzSc
	 NXGZWVZ5PC9pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBDB1C64EC4
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 21:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167580654575.6624.11528236646096120776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1533a5814560cec90f1d17f39792262a3efaf1bff7121c581f67c2508740d13a
Date: Tue, 07 Feb 2023 21:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675806545

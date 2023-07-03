Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 688E0259D
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 18:36:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E560BC433CC
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 18:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688409368;
	bh=hZv5Jg8E1aE9u1v999oDB6V9Lqj7zYEKTi7mX9u6b64=;
	h=To:Subject:From:Date:From;
	b=L9ySi7o7n2ffYWqVBNmpD0zkvQ4ayKQCRX0okqeIteOQhU2d9//E4X7DDD6FeyGyT
	 4tbp8EFXTmMi0/+pO4TdTSOKduC6uI2CzrM/NShGTz+qncV9j1UnBBsoBXhKO8plcZ
	 jqJPRdMNve+YlA2hbFAY113ksUq4jwk4LPAKFQN+e+cVaoU+BDkJwVDcxGDLjjO7cg
	 I2RdVqNBswJOolfIqrMFe8byUCz+Kr0QP6uxocUd7Zv/6/5KF6vgMY55iWpO3VxluH
	 X05XKRGFNZDPc05nmCPiOz19gWjGr5/tR6d9X5jRWHvtybPUPqj9d7fW/UpG9v54T9
	 Qc5SATM3WBKDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C759AC30654
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 18:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168840936881.11167.5240393169119558842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4de4e112f4307d3c5ee0f77db5ac4815929f7ec8acafad1ce356d122e796f283
Date: Mon, 03 Jul 2023 18:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688409368

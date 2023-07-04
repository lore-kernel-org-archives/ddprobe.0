Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7372F10E1
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 06:16:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D126EC433C7
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 06:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688451368;
	bh=4gcF3xGYZTzkBJKhp7ZUscOFlxiRPeZ5Gv7DpMBq7O8=;
	h=To:Subject:From:Date:From;
	b=UbqExM/RdNkXoUFSjEZOhTeUl6jhO8fb8WgfV9aiEbFILfmPtl2kQx3HWv2QjE7hy
	 ygghnsBt+74ioXrr4CiTOk9gyq1S3ULeePc2o79AsEBo5ldm6t13D9ItChUBSoASxj
	 26wFDw0DOWFOXCoX3UGKgPqUY1hG3XOKvnxWQyPpxscqP2P30WkmqtY/KWcvcfuyRk
	 XVM0OuSoIidUflH83EpyIfFf9xPgnvuQC97vgkJRa3TR+7xDaZPcE6MXd5C4SYxf0E
	 w8WGlSh3fb+5zaWF1OsGdZ00TTHm/KbEfiIL+5FPlP2h+bf7Vs/+7PDqosP2MTSfu2
	 Ojmh0xbOqgJcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F1EEB64D9
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 06:16:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168845136871.19699.2580008027699712773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 708bbc808abc74984b1b30d5369c459cbf46e1a48f2799898bff16b6ecea2172
Date: Tue, 04 Jul 2023 06:16:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688451368

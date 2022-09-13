Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5F756718
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 22:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 691FFC433D6
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663107653;
	bh=GRN2Cga4KcgofDHMzM2aGZW+wmESOO2m+tLm5nmgwXg=;
	h=To:Subject:From:Date:From;
	b=DlgFIga8MD2BHKtG7wGXtD+xcOA4WvfB8m4fc/1ZKIr0tfW7QBotW7+S3OBDDOClq
	 lzRWHlbw87vSWBHR5SVClP4z3bG/Yn5oWHrg/aOstBe8IRVDLnLG0+SjZnCSjdXjVi
	 FOXptqMMufdfGfBniUtUbNWPxGplNbcZoWbU7QPSzdCYJD51o/0bzTLsocGLnm0Acz
	 IZUcj9bEfDNnxB9xN9YReXZ8gSYdNuT7JP45znE1at7yVxtC26wFA6QPjbHbH+P2hP
	 u+TCaV91sWkR9/zNPWYkfRYUhM7A3xilpthjyvmwZjSfEaXQW6s850pxw7WHdGt8rB
	 1zvQg1MpyETXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 520DBC54EE9
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 22:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166310765332.31703.9831389945477441062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a5fffed0ff5e278b3e75f4a5fb6a1d818dbb89e82487b27cc2631bbe3145d4e
Date: Tue, 13 Sep 2022 22:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663107653

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 547BB625
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 03:16:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD6B2C433C7
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 03:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688440569;
	bh=dGCedL2w4UFdYgp5uoU3gKJUhsApruPAnCc6h/hgw70=;
	h=To:Subject:From:Date:From;
	b=EbhBC3NRVJKFYTM0xjtop+qBvyDkFYsqv11sNPXtJ/gCE727LHLx6Vt31akUvQrN4
	 vGt5XZnrH99FHGnwdwptIVYXZdqC9cZ47jDZYqXtCWkyvbjnjBbpC0ZxfGdLyvlYE8
	 fNnMgr149ALIyciCPARjqeVWdADbrYutKwxfG6iQv+0sVFvMIhEAOpTSWNE8Yrq6Ov
	 EGfOjDDcnL5hBdQfOK+W3GRhgPiwggvFlq71+YS9BtqHgyzI6+qSAVuJeTRmwSOJUZ
	 RXo1oVzutBJC6RuFWh9T7ATGKvdhNss9+vMWaGGi7Rvb+Rfcv/HNLv4dg7fw7XgQVn
	 nVfGDfcKPdMbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE40EEB64DC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 03:16:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168844056870.6090.9454690665503617122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 939093d376893aa3a942ca029acf39a97f1280f46eb1f317dd1d67c8f1d19f8e
Date: Tue, 04 Jul 2023 03:16:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688440568

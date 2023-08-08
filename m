Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5203D1641C
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 23:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF1DCC433C8
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 23:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691537588;
	bh=vyGRZQKPEP22Iejv6ZQTyAYkJK68I1a3Phnbf/0tkec=;
	h=To:Subject:From:Date:From;
	b=g2r3tL7dI5pvCakhV5hYVXre060lx0T5rp5mmFbNpDj+sKJPc7VK6Sb/7yLe6LkKI
	 R1cW9O1J/kxHYFP4PjGzGzp+JFe1h366YIcUn6tKcya6Ni0wOQgowVPMCrPzeYvAgx
	 9HEiAEk+p6zTbJ4XJRwV9mjel2n+BLQ7L2gsnaAet931UHIW371AfpZSSd5o4HyjsO
	 xYYcnQh+Ko0EykVz7PCVLaJQLWuQWYQovbQZpLB3HbLqkUHzkpIujjwdhkxiLrSIFY
	 sk/WHCALEnC//tdqffbA3yLax69sXO5OH7uVxRxsIfdtWnJBNi5GTy7rHBLnJzEdSI
	 IX9qjcEhPyyzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B7CC001B0
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 23:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169153758871.8600.1633853169619955176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74f111e94d0314ab5fb67b9324daccfc6aa8ac992a3474c4ebf3aa490ed3c5a5
Date: Tue, 08 Aug 2023 23:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691537588

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF4FC185B
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 23:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9874FC433D2
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 23:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673134287;
	bh=OtUOc/Ej/sWSeV+HQLsutpkkK1t3Vx8HC9Y9sjV8TJI=;
	h=To:Subject:From:Date:From;
	b=P+MVY1xJ3RJH0oL9PiATvAA6sMSObsyOiJOukzWu7wlYp/AxSRLEmY5sfhmy4YMIW
	 1YR5w2H/TxnaKAAWAXfe3sJ+XhskIKM+p/8gsUZD5OsYjcZ4yU6hUr64WdCPFkJ7G9
	 JbuL4FamV2AUSSaRDeLFPqrndFNaKeCgG4nVByTb+L4yqRAvcw4dnsG7UNx1+WDbNv
	 z2KT36r12hvDLcSx9nYQ3yXoWAwjJqEK18ihgwuXsvYlV2mpWfiaR9ZR8H1KTCtCIV
	 K41kHtg6QRHyGGU0Z8YobKWjr9d9OeyCbgMXTt6nOf+Azyr4UtnjinIH5ExWkzh+Td
	 Vy51VqHyfrFNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F776C46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 23:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167313428743.32450.17113733323307244645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 034c8ea2ca6ff668b5dc795860db3c05ac70e02665c1c46c9f1394fc07959d37
Date: Sat, 07 Jan 2023 23:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673134287

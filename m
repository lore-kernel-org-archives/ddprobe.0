Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E082F36E
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 01:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F65BC433EF
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 01:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671930687;
	bh=lQVKaba67okqg8ajAfBSO+L4NEe6xonC1aNRRrmF6pc=;
	h=To:Subject:From:Date:From;
	b=QcmvDTXmuqTjlCHQXoJ1a3IbAWXzDX8qxvWcparbDw9tOG5j00gx6Qi4lALDaHV5/
	 jBzFZKAqR2rwmWjXBS8l5VQzM/Inz3X1CsCltFsbF4BlET24n1zIPdbmex5TzgNf/+
	 RDAcsKz0nxD9Kjx6MMOCA+vziVX9HqQbCOWejBZ8FZW4PC22ewdofc+3JUTNw8RF3O
	 E1Zfh4iXlQBXPWjm7zQgTMTNUUMQ7GpHxJn1mZTu9vLbdP33+ctydK0r6775mzDMr4
	 S3NWR71ie/dkwIgpiYvWbs6S+ySL43lqjFnfhtuQmciKRBqy9iegaAUBM7sHx1ektX
	 j+J9R5mCSsVTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68775C4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 01:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167193068738.11754.16327908082912394822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d614a0781a3823a62607c79cb2dc8991ad29981291248758f562dcff04a5dd5
Date: Sun, 25 Dec 2022 01:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671930687

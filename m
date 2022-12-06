Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAC022100
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 07:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 731A6C433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 07:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670313054;
	bh=PNd2PUGvsXtOZjeSahDqcPIgFWDttKFXeeNjNnmBIWs=;
	h=To:Subject:From:Date:From;
	b=PGQnhYlpm8b0oa6X5COO8QUxymrZd8Wr2elg3Huatb72/R5zg1Z9kAeuZwIYr9dvs
	 NBBKEuP6YZPi3nHn3NGx1px8kbdG49ze3bZ4xPBZE3LY0e0SoTO7EIKmrKxVRc+Rkt
	 je8T2AmfVhE7V++ZMEsVGJeIKiEEgwMMCsqjDj9J4VDhvSYJnRg39IDIuwfnhJQIz5
	 E2pH1WqekwGcdoa/8GOgnG+/9zBEoi0y19hxNt/tKBcmwJ7gOUnyV2b35tPC0rq0Eo
	 vOE5F1vDvTMq9t3nN48Z0G1zGRYxUB/Nd3VTlBElUdQJoLt1NcDPPNohvvHZFahZ8o
	 1Bgl50XB/jnEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57E4CC3A5A7
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 07:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167031305435.11487.17784187217061818485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a8bc0bfa41e11c70143b937c70404bbdd804e1414552c2e0871187d4da78d9b
Date: Tue, 06 Dec 2022 07:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670313054

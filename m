Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2C98EC4
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 05:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73794C433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 05:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669872054;
	bh=ZxTno/BASQBf18psA4wR01kekr7dSMy2Y3qKZY1pBTg=;
	h=To:Subject:From:Date:From;
	b=QtECFjZG4LckHw6PawNJq4p+oMYnbvj7iZxP/7DFWAQ9UwuNxKYWE10LCQyUPL7mq
	 QuU4M4rPplcGPm5UkkmhVKXZJnajA7W8Gb/AaubwZ5kgEUX/ZFjxNpPzbVFoRw0rwc
	 S0y9xgrbwJn8rylpFcDPnwlSg94GNNjSzoklV5NaJjgFQlgq9ftgZ8cUfJGKSOM4A4
	 TK+7LGegYEEQVBzahRM3Nv3LafqS1zDiG5v+Ib1tD3yHO7Fs1bcNALjnSId6npgbBm
	 2HDNMOHWdobSvsY5cnYEssUvPrRMiyJNXt0WKl8HsjX3qsCQhCRoieXXDPaa+OV0TJ
	 nxOx6w4jc6aZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56C0BC43217
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 05:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166987205434.15905.2813245153601867188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2b7c77c31dd6526a0ff1c7b23527b9c0c57a2000367143b695f310abbd3f2dd
Date: Thu, 01 Dec 2022 05:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669872054

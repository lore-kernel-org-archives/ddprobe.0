Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FD5915A4
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 08:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A571C433D2
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 08:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672476087;
	bh=SFc/G54W2KD4PLr24rHJU6EJP+wK5DPLI1AdCfmEr5Y=;
	h=To:Subject:From:Date:From;
	b=VR2eRk9+nZwQRoiRChtMFMnOZ/6TGvwM1PweWOlCWsbukIOsNLte8/NsQKSwh/nc8
	 pLLlE9yaiP6ePAZLCCJkB0W2lRNPjf70BAJw0q1kYXXP14Zj1xjqRuAWI9VnHOpqAt
	 ub8t4OpW/4wVmrZXtpP4YWSgAFlB70+zlOIdsnuBplAIu1aFWqMNWPtxGdYCxVG1ON
	 3RFqZLKby005PGcB3IYsVKHlGB1R3SHbsKBuwaSXi93X5sfic87bM6+PnVmUa34hb7
	 bNlquQWwr0Fn+/EASJj9hQqgDIPpOpL9x7+ZEEnfW6Gtypqtj+OBJqZuJwMqtAiP8Y
	 liPJq7jmiLRHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7BF65C4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 08:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167247608744.15072.18163089340816449697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdad8fd90266e61cf980f7c56af67e066141a9d1253e69e6877e4cf392f4feeb
Date: Sat, 31 Dec 2022 08:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672476087

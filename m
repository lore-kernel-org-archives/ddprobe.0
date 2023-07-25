Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 850FD882B
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 05:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7797C433C8
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 05:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690262528;
	bh=UAAYWSaM0vTdJpcGOg2W5Y5L6n7FrIZ1BCvncIp/K00=;
	h=To:Subject:From:Date:From;
	b=cLh1CWFJwcpkWB834s/zHIObbcaWhvIf3c0cXSlrcv0tLzER9EFqu80Bp1+Yp4FP9
	 H6yOwwMgoElmYQLH1O4f0nL3iU1RVK7OBXtiEyVR7KnHvI1+9x34EFVCPZCQWZv61W
	 rSJu27JMmb3ndeohYf7hz9+MGSRI9cD5xgkjeszhKbI2iuw9eyLBVHNyxE3X7vk1FP
	 yIVgvp/Ur8N14aqW39jlTRoQTGcXiUALYIjqeW6hr+x3dP3W5vsbB6TdBGOqjfdf2p
	 /hu98FXUHTaNa7VOCbuzpYgilM5W5A79KmH182vOIPv1P8wZ/qD3kw7kp4pTceFaby
	 m9FbvFeO9beFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3B9EEB64DD
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 05:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169026252869.29918.8128197871542506682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbe459ea81a87a84e861efffbc6cc7a85efaebf1a536530f3913f94e09be5955
Date: Tue, 25 Jul 2023 05:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690262528

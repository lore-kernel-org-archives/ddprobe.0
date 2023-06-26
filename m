Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 660227F
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 12:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6830C433C8
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 12:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687783988;
	bh=11k/NCWtQa9Wb9GXDLqz1Jy6ehgSL0oMxMRjYT1JuCI=;
	h=To:Subject:From:Date:From;
	b=pLQt4GR3c3e62a1pGTqf7XR4rPIblmxDxOgGRD/CGFAmFQ+t7u6kEvWZn3LxA2MQV
	 IDSHAAFw2wLb1S032QgLkbqT3wxzOpCV+BCU2f8T6t5prt7X7kLB1Gy81kLqU3+Ndy
	 CcNMQl2oaAecKjeoaCYvwmmnSKYoDiNEGoJUrExeS5EHoMCBQMrjnXUFv+h8NthxiN
	 9oMyurF97sl9vnx0DiQ3V1YjilgSfNbqU8SFdNEHtqFnoMpxasJ/R4Q0Zw4ZyTldGb
	 XXPIlOBSq38LYSDVbXH1TjsAL+LrHZEL3Z7QYPF3bmN5ztYGCt/e/cHGLK+Mln8CN5
	 fXYRd80mCsZxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B844BEB64DA
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 12:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168778398874.15371.4991535699339544166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66bdb44a614eeddef3f211d39b27dc245dcab4bd65fe80a397e810a1667b05f5
Date: Mon, 26 Jun 2023 12:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687783988

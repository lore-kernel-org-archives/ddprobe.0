Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C99CE1C32
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 07:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74FBAC433C1
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 07:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665299453;
	bh=Yj9PbqIMgCzdyh4Rqn8a8j32SoAPa6FVDbRGeNXwdEI=;
	h=To:Subject:From:Date:From;
	b=cSLeBJJExE9W6A8oheJsmS5k8o5YZLSvAhE0pMMZUU9A3Fgc8LWV5XqHUWNXtTXj8
	 z+ZoegbSn3tKyB6hy/0NEw1h3Qk3uwu4uoyg9WGHyRKaM2aiXAHSLsnhlTkwgYXoCQ
	 7X+lGJNl1U4g8qZCTu/zEt6BDWmVRzxECBnnCOHtnBJbTiAl2RuNPKZZtigoIDxMLw
	 S63Cxq7CVe+QbcSGAVXLQC0YYB5qtq3EF+G5Z63G4XLk8yAQzRw89p658eMOXP6on/
	 Rzh30v+SROCX62pW8MjzPrIRoxELG2jYsBzvsH6TVVZ1z6kZTUTQYGGicgd0W1pdHd
	 mXs2HbpVwc6MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 595CAC433F5
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 07:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166529945335.2539.10212787979124232973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cf992c9a166e5f56c2a467eb990fde515a02ff964f33677e3bc05783b460ece
Date: Sun, 09 Oct 2022 07:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665299453

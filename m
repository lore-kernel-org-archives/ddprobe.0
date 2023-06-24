Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53C48818
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 07:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C70E8C433C8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 07:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687590788;
	bh=8YhMWbV8UYNBSqm/yllLyTSGBS9LaYSUT8UtOtl9UTo=;
	h=To:Subject:From:Date:From;
	b=cKw5uo/5l4q7B52FCYJ8xURjSHz3EwWKq9bMU66w2B7ngnmBJrkbDKwx5FFiLeGt5
	 xq9M03LdPn8Mk3X1ypSoaaFFtQmqapqy1mQa3Al1Uye0FT03LwA1QS8DQfRRz8ptI/
	 5CvjmXLbF8yYxGhfYh1C61E4987BwC1NZv74LoV6Pci+0u/xPGco0QmrNBf2Z4ULQ9
	 KMWrglYdxJRXdWNrjJaYGP5OCDsAOiLG3EqwDbo4Sd/qmHZJR+ZVf/oJgCRIfpMJyL
	 6/LPLm+sZQ79S6/188d/3Xque72zfxNcEzlcdPg6Ui4PdcHMhqHm3sbymYLl6PjTYZ
	 xN+HjG5grAc3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA9CEB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 07:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168759078869.14063.13259908361371537678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 096be046b75bb7a7c09023928faf36458acab26dfb1cf27e944119330bd7165d
Date: Sat, 24 Jun 2023 07:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687590788

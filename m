Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C67D4290B
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 22:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B302C433EF
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 22:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673908887;
	bh=e4jrvsz/eSR0QQnujOmtc2i6o7dF/VntCOmZ5wM+mk4=;
	h=To:Subject:From:Date:From;
	b=lRxQivRxdFWo+110kmQU9Vn5cC90I+eWjiH/AI9T02pjB00i1APr9t5eF9lQbkaxF
	 X9DlqpJ+Kko+hVqCPDrmJ1Qqiwxhl9HmQUOQrl08nb0Acp/OwLAOD2+w6B8f/1LDmn
	 gcVn+bu+iaBiGkIXP10hKeA4IkUlkLpKiYGOMTRzCe3REx9bNsV/rxY7315krUcJMP
	 aXU9CMlqvg+NNgcNgeNnKLeNzpD7QhzD/Wh5lRVw0hIDTWHqDS1gCLikf2Gkwo1ToT
	 RC0rKVFBfPBgaVIqVqi97hEBNxZiog/sBU33Um3IaUIfBTugO7TsggfVvJzkfJpJyw
	 rxTCRT4+6agaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 602F7C46467
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 22:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167390888738.26911.11323856294466105657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90bd0f9c28358a52dbdcb7d19c1d34cadd68964e9be529bd13ebe82af24a1639
Date: Mon, 16 Jan 2023 22:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673908887

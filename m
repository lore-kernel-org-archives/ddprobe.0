Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F9E110EE
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 22:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA666C433C8
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 22:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687992188;
	bh=6HBT/xSN61opr887+xw2IedBfMd7jP6AUrjFIfyNeG4=;
	h=To:Subject:From:Date:From;
	b=b+LpP9r5XsyPzSRyW5Fzg4/3EIkgK4w9xWNnVk9TO0hK+4RcD5eSrhDV+i/v9FqRo
	 symhPe5lignI5lx4Ae3Xdw/C6LCwifKXc1zdE/HYRiVgKSPWdymKEhvM0gY9G24CzJ
	 Nt802XUlWt41WFRo2A9yowBAeDDmyzZHmxEa9NfQu5GT/KLEcJ0KUcc73TgZD/dQgD
	 ggE0qMr89ifqJinIMkeYbp1jok4JBTQhbpBnxPHw+id8faxZKtJQYXyG/MTe0oZz6P
	 OMpgWxBFgzOf6syicHTbvoMuP4XZkcv7bqeY7T14ugeEqDAvFTzbCBCijdJGMXFiVd
	 nku6e+RNXZHoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC2D5EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 22:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168799218876.1735.5994909474258975738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83afc3e4e5467dec290e9e15edd9b349780ed513b86b7c49e0dc1200efcc8a97
Date: Wed, 28 Jun 2023 22:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687992188

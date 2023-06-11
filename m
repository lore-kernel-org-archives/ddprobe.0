Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77886C2E4
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 17:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9DC4C433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 17:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686503525;
	bh=v+9uuQ7VlCPy6aN6Hrc8I2xkItPP8RN+yrdXgLFUSI8=;
	h=To:Subject:From:Date:From;
	b=K0kHDqBKcqlad+u/phCR0+bdFeK7pLrMG1RJHWX+zJ853L1A7XUWY8BlXw50kqHPH
	 ONA8xbgKwOqAii7mgM99Gi6CaWVtBKYDQdLgwhmh8nUBg7TfeajaOb2ApjQNDDkAlb
	 jLnXdHelNX1MnXU8jaRQPT8XGMuuXkOgiwFNqSLRBMT8h1ZDMwqYiWmDGfH2+2uQYM
	 gnR3TN+RclCQIMabHbxSUwd5EKdlmRtFTyqfI0477Wql4MMtwLca/IitkS0DuhpHAM
	 Hh9rOADj/+Eh2cqECe1d2nZFGmoIU5WAJm6h2e/+PC20W83XXe6dAE9cOhm+O82AVg
	 u/NzxA4Tds/kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8718C7EE23
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 17:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168650352579.15716.8824830204250896853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7483b3e7298fc39c6b862c5c822f4ff899a24ed665fc9ee1ef401334107e9e54
Date: Sun, 11 Jun 2023 17:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686503525

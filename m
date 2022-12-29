Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F00921105
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 03:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 818B7C433F0
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 03:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672285887;
	bh=lyk6Z+7PbFszBb4nXpCIZjZdEL9rPCUE0aCT2PFGgII=;
	h=To:Subject:From:Date:From;
	b=W5JGkQpzyyHfVjKMJEWl6JOci1UQfD51dluELwwjKLpIYeXUkbBJDOhQM6v9xO5Q8
	 +8I8J2tSHDcp9kXiY3Ch3a1hc7UlwCEtIOYLDyCIRLlNqQJj/Vf4Kzszc9vspygq2v
	 bOiZrYm1FO9rR/qmh5Vj4i2eTPtpn09Bch++Kf5VKhkbhwWCaddBq+7MohvR/NLtGi
	 v8k+HgaMehSi/pLeGvsPFqEqatQfERhxXoKvFWYiRIc8/QvvpQ5C0YmDqEak5dw1f5
	 cyBl+5Q7HfpzUJdd81AENQ9kUMH0eFfvq/mkagqAqpJ2SwKGqAIRoRr+kLPn8e25Gb
	 FVlAwtghoMCbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69F9EC4332F
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 03:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167228588742.14034.15328451140563208773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d1aed7b83af157415377add10dc8507ef9035510137a4e924c565bbf5f36ae6
Date: Thu, 29 Dec 2022 03:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672285887

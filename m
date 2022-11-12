Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C764E1C01
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 16:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E1A5C433D6
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 16:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668269454;
	bh=LH6rkVqfjhdNtlNYPi7G8N8Zyr7XeInY8eAcfMSKleI=;
	h=To:Subject:From:Date:From;
	b=YfVVgmC6cJw0KgO2bXh8EZh4NM/cUd90AqByA8BdOwGhwEGsJfMnc0z97f5OAPcU6
	 +YJM/uGiiFH538iyr/UKcRCXJb7hcOKlCBW8rZlI38jJs4Tsu+tVEdFODLLuGAIjTN
	 96edM1WeUy7s0t03e0dKPDHApaFuJ1uLTqyAB3aTHOrsWhktQAbceqoC/hae2khP46
	 1/Sz5pJKvqfxPZNh1MRZIjWQ7uSu97UiUq7isvLtXhskB9GWLX8ixv0eTMqKSSSZBj
	 +mZNawLRMEetvQ0vKHO7usXqJVp8RllxXTDeMH/h9mZ3Uokw16ADwRT5bWQatbjR1L
	 nyIQmjZdUHdiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52BD2C433FE
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 16:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166826945433.17267.3845058681096983840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acb1b6911bba97d3d7fa5deb3b6c04758a3f7a06fcb2a3b8b755162396ad3ce1
Date: Sat, 12 Nov 2022 16:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668269454

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3BD17F
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 23:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FD56C433C1
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665099053;
	bh=BEXGbSVepKHn1hJMd+7L4L0zkhmKecWzef/UBkzEJyk=;
	h=To:Subject:From:Date:From;
	b=urWza5u7JgYuHNTazjTgYj6265OowtFPXo1ehwCKzeuChHPWgcWHB9B9S3LPaC1M+
	 jFfVK06Ok0UBzekrs/WMxjWGcoblRyefQVtAtBNMMe+mNQ99HEfyEvmaG6bARQa3xO
	 +V9m8YL8CZ5haaqJV2WU6y65D63OkAZI1gRoH2cfQpMBWf3kPX4rkr1SbNqtyq3u18
	 SALIGGlk7yXHCIRJ0JXR0Y3SSuQoPNDzpvcZl6ik75Uz42q72XpG4+LhJ6XI7Ei/ZT
	 Kr6qCLi/KrA67exFFzzkKBJsswT7XxVy9AfqH/9pbQEjOhqhV5N3M+0ISykgamVH0G
	 LVd75w9gDFqBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51750C433FE
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 23:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166509905332.8585.4944153701289170850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06e79621e521546b663a8099f98c783a1de9b038ffc13330a1bcb7d350ff44bb
Date: Thu, 06 Oct 2022 23:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665099053

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B83333C7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 15:41:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF445C433EF
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 15:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674056487;
	bh=zc0dt7JEBDExiIllD972vkeO2cvowyqIbe6GM+SZywY=;
	h=To:Subject:From:Date:From;
	b=iZgBdWLLqUm3p4es+gb6gGrStY1FArPCNJ/U5DFAbLErttBHYCEEGsVOkybRnFBk1
	 QRGwL5Ka0XdDG99BD6dGTjifNRIYps5XsnjOJv944yVKBP3kDgHXPFdMnaOtKsEWTW
	 G+yj4L3IOW4aj0TM3rXHK9z8yuWSPglsJcwD5/5FpbnVjisQNFNbEKMayp11f7Iaqf
	 KlgptAQ7rhes1HkgEMrO+EA1P6JHXfs09g5aGmCN6WqBV8WfKwXhRPzLhTWMFqgQB3
	 8VQEOMHCV0SxucrJ6oAf9w6bWTPKEzpjRb0Rx2r3lbQHtWXl1p/bh3Z4RVJw5rlisE
	 fgW56dYdtrDQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2CC6C38159
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 15:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167405648767.12532.16991146524005659102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 196750921c3970c7b43b71c4fc7bbc0890bf239ffe1faeaadfff6c9339026d98
Date: Wed, 18 Jan 2023 15:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674056487

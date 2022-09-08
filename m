Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC70D6126
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 23:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 782B8C433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 23:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662680453;
	bh=2gGOMNGhq3PeXto9wxp3Lj2kxJJe0qbtZP/0l5oid+Y=;
	h=To:Subject:From:Date:From;
	b=Ej1/0bYrvb+5k9GLDNUv6hISjRga+QZbkJkCGiSmFdNi1iyqDuYJZCKxYwN3rPm24
	 7VkJUcM40nFbc9goOKjZKS0px2nbiDYTxuIt+KZHW15MydaHgBS/6bUkn4R2QXZgaY
	 7i7h67VRkRAdx1EJ8PYZjPfDxkvmM/ogYPNkEJtelrX7osduxQ0HZqFLzBTAKDgk8h
	 aB/a5nBJMYsWl6IIiBorJ/DxWggTixSxcRP6Cd2DHNmYDyWD73cqPeeMXP0SMztWDy
	 GDJW6ucMDzIQ4cQccrYnZl/c6Ze2i8TP8iy48CbfUYrFjvOuKLpbilqLSj1kwNVVyL
	 mkvZnt1MISC0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AA35ECAAD5
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 23:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166268045336.23108.10088725383566065267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb950e629a7f0d8e49fc4911351a0a6a489a7dd6e0f066ed7680cb3a27ced9b3
Date: Thu, 08 Sep 2022 23:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662680453

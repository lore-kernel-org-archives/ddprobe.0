Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD4832F29
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 23:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71984C433C1
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 23:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661383852;
	bh=Y04zOiQRW3b3bKZpB1KW/HulZFY0Q7qOXeuo1ticNvo=;
	h=To:Subject:From:Date:From;
	b=ZF0X4A4NAWlpxrBZl5FHeSV1puM2Ew9rsfVelOFFLghd6dqD3S4934iEYrq0mZnbM
	 +S6LJHjJiovyCaURPWWnrNuxoqNG0Kr1NDH4ibBgaMbztdd2Mq/ASq8SY0QmJ25Xcz
	 I+yl9q4zl9uXXZen/isisYfHpr9BqPwiEjUa8/08/jhKiVh7+s6ydXWNKkorBVwXiU
	 0blH0csFhFXZ0/Pxz7Z+CZzgNImQ2QanYOe1IY4JNVY30wF2OW54vTIqaI1+/A/e01
	 5jMnS47n4FmzCsRMnvy6EKyUhg1BJeif2rwLzfGatwgI/b8zTkexMKY9tK1fYQPfEo
	 whqPZVPKzyh6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58845C3F6B0
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 23:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166138385233.7147.9114003953830767341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 437dabb6e7fd1c2696ff399c560fa2fd448da2ee3a08291f848a44851ba5f2e4
Date: Wed, 24 Aug 2022 23:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661383852

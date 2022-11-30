Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFE2C6FA1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 17:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92E89C433C1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 17:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669829454;
	bh=mx1XU9yR+9pTvA0JZDcwZSDldOU7iMD/Pwc+6po3w9w=;
	h=To:Subject:From:Date:From;
	b=ZsAhLuHy3DJKNo0klGZky4mBrAynfyCr89i7+RVxsXIcnh0bL/ly1mMf65zw8Bf72
	 KK/icZGVdIZKa73GtCaKWqEvf5Xa1sbjwMi2ov+B+qSSwhe1sCDmg9TWWAJfLnEIWO
	 qZUphTXACkDpUW/FJusEVvS+D3BmwJ9TQt/mRFK/eJCCIxsqi98BNwC+OyfhM40xhd
	 Rqgkw92Q6QuJ/z/yddwopr1u0yhPw5RsdpzrJOqyNQxRg64LYBf5Fp9AyTC2AInbZb
	 7MqZhVmlbug6mDjnXU5j6Q/bwYk1no9CYxVHctbDv/O2Syq7cUD/3vYKoizfbgnvAh
	 cwvrlR8gsvz9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69FDBC4321E
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 17:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166982945441.2521.17485918842893549436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60f7da6828028fcd80febb18416de37698a1f335440a2255d4364eb9b980111e
Date: Wed, 30 Nov 2022 17:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669829454

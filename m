Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D759C1FCC
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 04:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C9DEC433EF
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 04:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674015687;
	bh=R+HJ4VhSBFKXwbK+DQkAIrHPReUoeyFi9+hxkY44LWw=;
	h=To:Subject:From:Date:From;
	b=KWM93jTILQG3DvylCIfx2AeRa7O6WlJrY7RabdtqfMvSxfijJAzrMMUTSyXBK72Ls
	 wqftQJHsDD/hBwqBxApf5lbbcPtjORcaYvsqr1eiLyD9Efjp5zuTyX7nhqE/98k/rw
	 Xzsk5/GXMFA9ELmv1PQOssoilQEh8Y2a5vdHoR9auS+7IsJ4FdS9+31KxXOmo1djf1
	 h8YxuQsegdOjJHASoTe0tUkvZQYUvG4Rh/luEl9Jpv9AAShJXFLW1rW8b8EERMiSHt
	 rxrDrrQWpCdUj61UTZ/W35NQ5w+SHeNS6NxjE94QUrsh/ttNbC8ulDCiyuOTrdZAob
	 kN7YUxMJ1LIOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62BA6C32793
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 04:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167401568739.22323.9278852281852227533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8307d0c560ba96af62c212c97b91b60f383d341264df67175be718278fbddcec
Date: Wed, 18 Jan 2023 04:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674015687

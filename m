Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD76D17D4
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 14:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92C21C433D6
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 14:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669473054;
	bh=QUFgv/slXkvtSVQPA5gxJQjfW8sWj0buKOxZrqQcpwk=;
	h=To:Subject:From:Date:From;
	b=B0MZy/5WP5X1RAYQe73rV4C9vxDaq+LbMrLLkBU35a/N38XyR+hT5BvCB68ZYT44h
	 GoKZKtDRGGHAkD+ZJdZIGyhBN0OIob7A4xb6ztAyMozDJq72wkTcQC6PxBhAQjYvYN
	 9ksLmsRSyKGxA1uIZP1N1AyIDKJWQGhScN1vVE1oBj2cD+M4f9o2bPsEi64XNEVgY0
	 eCeTKiSsFbNbHRrurL6RnMceHogCD19UjmXwN0UbX7hYCa4lFWqyzIgzCsKc5HDaaE
	 pKUsp8AgDGqXjSSqFDaxS0YtKIlJ8BzJeOm2bI8u82JbNfflX3HfAqxw1qohKjhX8q
	 1eEVI0+6dqAKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 707B2C4321E
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 14:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166947305444.17634.17843369381952649995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa17b894c219d17c92159fcc684ca2a67758d33db558f9ea3e6d06119048a1a4
Date: Sat, 26 Nov 2022 14:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669473054

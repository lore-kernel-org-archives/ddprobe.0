Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D60CA10E5
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 02:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82F20C433F0
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 02:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670724687;
	bh=o+A3L68lBlB1tp2QmWgi9gNm3WlWesi9RK0e2UYbu0c=;
	h=To:Subject:From:Date:From;
	b=VCyn5C7mJvUZC/J1e6NVSuWY5JeMo6Y9qEEaSKgbXQFlnhbsigpBL8pXx6gp1NgkZ
	 xpr2rz2SKz1BXmQarAir8f+kzHIMBh6weOxaFkaXuaCaF/g6riaWzx1fy/r8On4gWY
	 4j91OO885C22CiFexvKaDAbDs8RnArJCJfTmP6dF41Gj0fVk04625rLl1Zwqkp7r59
	 IZ7ZB3ogmS0xgs67N7GkyR4uafgX6MOo5dCsrcD9mu4cQFbLUEmQT7Sra+tuyPvdAK
	 /UNgIrrK21aq1aqezoWAUXUfXfJiCckxhdbKVkLxn6AKYFne3kpmyWPT4/GOeijg98
	 PSBj63bWLmVJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67B31C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 02:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167072468741.5924.14167096313500229315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0631d538f131aea74c047c8d146e3dfd6daf95f7f6a096254aa3a5ac559833d4
Date: Sun, 11 Dec 2022 02:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670724687

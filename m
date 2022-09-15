Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C22F22F2C
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 09:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DCABC433C1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663232453;
	bh=+pjUbBtj5mnP9FrUoe4w8is56IBzaOuxY0RUQyE8gsc=;
	h=To:Subject:From:Date:From;
	b=DLSu6m7g9iCKljFCpPuZOaDQ542J2+NjU5ty1aqSqIpd1ClDhPMeOhzSqyuMJZhYm
	 N5sioKJaqHqXhtG6z/vw30G74AtFGoMFZC1J7XkPXdusn86IMF7qVbV5im6oLLjBX1
	 pq8qHhu6TRO/SgzZayxWe34OFHU+GVNNnWadSswzdBfZxqA55w5mufMlN5t/BebZMa
	 Uz+KZVZPXUUUB47h9tS+JiEomai0N7ssXmPQ49RNxkluGhPHrhlXV9RtEvHi//2Txe
	 XShP90QtWBaFeC2/Mj876AkcFG2uFdzYsNMIeVqocXpSg9nD2EwJiCepZmvwNaAlo1
	 tS98rRCSdMyZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DF4CECAAA1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 09:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166323245337.21756.14010704934793596094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 220e9f79a0516ed8848a3764f0a5d500d909c530dbe601a33c3f5a598ff4d761
Date: Thu, 15 Sep 2022 09:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663232453

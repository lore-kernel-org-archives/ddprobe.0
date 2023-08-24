Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 614D214A81
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 17:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3FEAC433C8
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 17:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692897848;
	bh=PhPGmyfO4sN/w+IWs2BGnBYS3OYUsq0Egl80/1pUTEE=;
	h=To:Subject:From:Date:From;
	b=fdubLkQeziJ9CMe/xwPkO4FufJU7o0AALRIxM1ZWoj00qj52KMOj0pmkqdYP2SMug
	 I0u+t8GHoci9B/m+pMKo2SolEBIqWRlaxx7Kf/JKglgXEbzF9npPQ9Jnreu44bEy9+
	 /QPtv3HONaY/iY2w8pyQBQE8sIkYqagOEhnymuj9TUY1ygsKiXqbb0RxITyHzbbvo1
	 8yxfc7q6SEhY3Vvbbs30cEKqNIu5ImQDTnVYXGuzj7jeyIe0WSAz8QusZisfddqjaS
	 CBsu9TnjuyfKju/0sr/4nbtPPgCbwWlicB4Hte3U14sUkUnQHj3CMXvV6kW/KC/4Se
	 1BpY4LeEgIlAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B332AC27C40
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 17:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169289784872.30624.8530506947522296391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa7d8f1bf9a5f8c72d786ae9b661e066dfb71a9ef56da3a71eefa5a29628ea5b
Date: Thu, 24 Aug 2023 17:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692897848

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4BAC7E3F
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 05:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E6F1C433D6
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 05:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663737053;
	bh=HSlA63ENoI/bun80PdSZmierDAP/vvjbTW1aCI9r/qY=;
	h=To:Subject:From:Date:From;
	b=RAv2DY6g4l59F27p8b0ebGL1AWqn3Kq++ZP96bnz7Z6UUoy6gt/VLWbaSpflLyoLm
	 PQYkjqu7FSwIjmkI/7PFVrBHJTQu5A2GAmARXW5bYzo7J5E7GUrq/EU2S77orLtPs+
	 AghLi+gi/FVE0ZSUE1LX6g+BwurpWZQKLBUbTIXjBsX0Al01++rYOjva47gLU4Mb+I
	 tjhQ0mphI6UYrAo3JMTOSfzKme9bxnZLioJKf710IYO1lj1frPVvqjLkcXs1IJx23c
	 Cdge2uYdWCfCH7+DmBbD0G9M/DrQJYi8sTTC9qs2SR23cPSNfHC1GCmikXN0F2XDl6
	 wLG/cuEUwCAow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53364C32771
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 05:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166373705333.5271.13470614517116239687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84756c434a0f69bef79e47defe28890f40c36198449609b4995a926b2a09633b
Date: Wed, 21 Sep 2022 05:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663737053

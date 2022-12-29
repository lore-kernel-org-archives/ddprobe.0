Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F33411110
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 19:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94FD5C433D2
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 19:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672340487;
	bh=eGY7ZOvvNNpBP3T5ZPzDPAchxWdihUaf3PxtMQ37bIM=;
	h=To:Subject:From:Date:From;
	b=GIHf8DFmPBpig61Vg5th2ORp4gLEyU9HylhzcslpOiYGsRRM2QiLADFnqC0U9MgZZ
	 k/Nyar1VOiPk14zDu1uJgi2JZreo9lrfOEfb83zIeyuTtxy37lNRrox2wHAHKnwpgQ
	 Lnkt5UBjJnt7qXhcVPKLHkHv4U9Mjr1imTunPU+ptf4mntcBSov1ZeiHN/scd6z39v
	 OdT3XsxoQt+d6HPSTWJQnEM0zFwWE4hX405ISTTDGiZ5KjHw2yvPeackYB7fBlc2VT
	 qqM1tnbUoq+2zkPapvCl1/uMgJp+PeYnOHsSxK+aiPF0BMRHXxVs79UPidircWai84
	 ZKEUiQSFUPmnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D7E2C4332F
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 19:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167234048743.23590.2874583104746951987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51084025ea8c916a8d7bc68ae1796ada728040c71384344df64ea4c578acfb99
Date: Thu, 29 Dec 2022 19:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672340487

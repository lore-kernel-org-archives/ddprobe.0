Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC976EBE
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 11:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DB7CC433C1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 11:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669809054;
	bh=aBcLRUIxJd9L2tMze9e/rmS+d6EJzRy+hfiEH5YG4VE=;
	h=To:Subject:From:Date:From;
	b=StvZJZ7HXMTMoYiJZGcnt72BfVDYAEL+35xeLIhE3E4uOpNeLUAY8WZy0sYGaXWCy
	 m3msQGT3v66hOQFXiyMbqq+E0HcT5npMQvXM37pNNInKVfzn8qgbiDySIWQrfBXXk/
	 d11ryjG83tfc1JXw9WF1Wg95wnqLsieh5y4oYUv6omiDDM9t0uSeKX0++Fr7Lslm35
	 BGRiIjJY9kB6tzcyAlbZKtSfLQ8chr0Ue3cM6pbTKxQr+KO859dony4OQayvO07Lce
	 E0YuDexSivE9DyKkJFsKN79/4BbpgVZzR62iGiSmkiznhTKL1U/Qnu/8fvHAIFp5T3
	 oPT6TDhP4h1GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5977AC352A1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 11:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166980905435.9090.14863671913306758694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15964df21dbf09aab25090e34f9fdebe2568f146a79ffee5cdd0bae74e8be8a4
Date: Wed, 30 Nov 2022 11:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669809054

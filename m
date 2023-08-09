Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF6E01C9E1
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 22:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6722C433C8
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 22:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691619788;
	bh=qG3EHqZw6S2BpOpuaZsujNFXtWZOqdN6cX5ZfGndEfk=;
	h=To:Subject:From:Date:From;
	b=ArsnIkWSKkodX6i2rW580rr3y3871CrQTDUKHAnOISXUkfvJfDNjxGGJaJascWjuj
	 c40CkSW9uYoEFD+KUWSM6DeNFpwc3Dp8uQS6XXtIoW4gqzRgsqJfsO/o8aLiOkTUvo
	 tJluPDgY6LH/pbrP71W11pGkPaoAjpXTw4j6gYd+JACHGhlvUGIABp02vaSZf0W08x
	 tUWT5Cvuj1a4nixCfiyxZoNC7MDEzW8AVk6R0lYLLjE53zwXDns/WbHgYGtdelhCtN
	 D3SvHXY5CP4KdhFRl3kzjB91RcOAs2E7qPrFVjom0XMs8Q4mVGUVrIlr6nrMcrYQ62
	 B0SF65oIS86qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD0D9C001B0
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 22:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169161978875.4213.3056568053035279582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4242b5b8f1455b3e2b3d0e0878e23a8d383ddde0f9fc373555f4954cc5b7f718
Date: Wed, 09 Aug 2023 22:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691619788

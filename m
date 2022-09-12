Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B843733D1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 18:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66114C433D6
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 18:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663006253;
	bh=hmerT/efktPkNyZx3Z/pCfQ7a76D55vBfyccWttJG/8=;
	h=To:Subject:From:Date:From;
	b=m0nBuEZbiQfnjqhG4fNG5UwzqGf90oZyBoFRunhRBigPgFMaUT3wUePYBu4ELp22E
	 XWny4Gh1n+yxYIgNASax0NtrNuFWB/35CSP4+2BszxrndQUDU9NiledfwAJb8jWFma
	 RJ8268PBcTV+KENp3wuA5uDU3N3s4ozF+jpd/0XxmzrXnWyog8KLokheLgIiobm6jP
	 O4bDYzQ8ETYB9Cz5R4LD6cgI9F5SDF539Rya+wej47vLPZ4fV4TMufrr68GVayFoxl
	 LXAIsBYNLsiRWUPreUcz5GoMnVoJDLihbn9Oe+m0M+G9px8K9a1OysL7YL6uRHczjP
	 qpp6QZwUtqqtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51446C6FA83
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 18:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166300625332.1882.12570829205540023247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fbe8937fafba4ac6f373722123e59eeee0e35e0e13dd94a7aa07337469e7711
Date: Mon, 12 Sep 2022 18:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663006253

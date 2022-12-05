Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B59677C
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 00:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A804C433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 00:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670201454;
	bh=sBmycB0eMA0RC99wsywZENqLJMp7F6mXVfG9Gt9+1rc=;
	h=To:Subject:From:Date:From;
	b=u/PrVIUcgfOTugNZsuyV1iVT91C5RQCZQyHCb4Y9eFdf4MztyItdfVHRg6u+txmV3
	 4pG5he2BwVMky5JE2KX5Odls7nz7Bh5S18JiG8L9vDGlFqNNKely+xGhFMRPl0ldYy
	 4R6FoVWud61R/9GUNWxSPvDD1IwdXZrhhEgsjbzQjzO7f3U3UXOTAOTc5qhw9wUuqA
	 mxz+RRzbFgyxo18Q++hg4nO7KGWE3swsAk4vHQBQK2kiIB+FTJ3tQSHDa2x5sCrKac
	 jEswZ2Trgs05wExLO+vhtKvbnGoImbPHAFALLdy9wqBo9cl+EMZ8VhXy2Cmpbpl3BR
	 VHqQCfNTrIs3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51551C4332F
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 00:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167020145432.8319.16867567160532074453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a34351739a9e49dcc2c4516b9d6d36efc9c8083e71d873334ab6c386f9fa2bf8
Date: Mon, 05 Dec 2022 00:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670201454

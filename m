Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 975BE1FA9
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 05:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08B73C433C0
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 05:52:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687240329;
	bh=7Zzdnhtw0UxrYRCJ59E9eqjWY6sQu4rN7yMogp58Zjc=;
	h=To:Subject:From:Date:From;
	b=VJxcuYuExTUD88gSOLOeoavB6vccwrlwHiCZ6Laxr/mdhLDmbg+kgQwdIudoD64Z3
	 EFbdAl1s5CJbcU2K3yDc1fep4ahdUV3b1UBM0eoUilEX4YPxvNvrEAd8rpsYJ57ttE
	 o7GvZxT+3B9r6Vhtw5v2ZCibbuqjELhNJ4DFXwqypUT++xF07mIfFNnxDqaggojNn5
	 IPSWWst1/6vOfk/SCyHKJ0cxKolRFOBzWFVCfn0Z62V024zLDTQTUgxm7/VfJM0H0p
	 7Cgbm51v7jxa2N8cQ1HAV4PXJgj2Gw246YiX6mWy0O28PFKch3NBhVf1XUUgpH1V7u
	 s8+8fH/OlVikg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DCA94EB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 05:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168724032889.13097.5575281953795621730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b1f4e261311e45c6cc7a574ec4c1d00b63154e209b9256af426ac5b2a4d3b97
Date: Tue, 20 Jun 2023 05:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687240328

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B14A17C6
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 02:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEB8FC433D2
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 02:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682650325;
	bh=HfaddLPrGUio+YMmI48l9haOFy2iSoQRhIoDkwk+2FA=;
	h=To:Subject:From:Date:From;
	b=ka5SuZc6CITlZJNJKJ/xSiLF0Z/0Yk1iHT0qMILCJe506DGsEBcut+GkuZghqyblg
	 yyzbLWtt+E4dKacHZcolRrKl415GREcxrc0AqeFNso3mEbZySkWlxLSJd9J8RK7R7A
	 h6EjjKJqFe1onoENZpooz3KYzlt7HGdCS8Edos/yp8TSCLEJ7JSp3o1C4gWB+J9Zza
	 pOTCXDT0LQsK7GBu8DxxBOSpJ1kes+D4JgGw3V2+b1qEV3aVm9U7RumSU/xlY/n3J1
	 skOVEXRnTWmXCP+M2Rxboa9CwyJP6nzuzo+vWY54Nkvr9a6PW804Ly+gOvTSgp/BvB
	 q05AoWJYrio8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE534C77B73
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 02:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168265032576.29823.15220681557734137531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 940b1d4ce646b5290d8907a239751838cb5d78a55ea53708bd4e516ca4bcec2a
Date: Fri, 28 Apr 2023 02:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682650325

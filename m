Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D430A2FAE
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 14:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F24AC433D2
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 14:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673966487;
	bh=uajIdwno11XyI5DzcjfI+gVGdcllUFVsgYN9vhhqPDg=;
	h=To:Subject:From:Date:From;
	b=YfvYP4SEZlWa+znkMmvEhAh8eTX/OVJYc21aQiJYI82/QTCCwkdERyv/y12GHDMrB
	 htcl9rDC/gpAE5d3pnNnokP937L7ZJR1xb2mLX4/aoj/ehBC35ZYEs3xj824uLlbja
	 AztKq7+vZLIq1MwCSMftD3EfziHoB0vOglb3zBpTKE8v2aiB2cLkm/ogyRRsnC/zou
	 /BwS9FPvwPmsz6fHF8G8LJN53JXe9aXDJUToz6Ha/grzoMOZaOsvi2RNZ86jPGT4bJ
	 d/7vz9pzrcbD9Sx0646ATGD63YRq5Tq2VSacpEWuOuFss+WSXz7zuK1yTgnQzgreKq
	 ynburhIcy7ytQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 611A8C63797
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 14:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167396648739.28298.16228517317218219046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ad30adedcb160058b145e131f89fa4ddfd6394685e45f9d3b2f6d980146bf25
Date: Tue, 17 Jan 2023 14:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673966487

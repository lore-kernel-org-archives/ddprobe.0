Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD90817CD
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 03:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F096C433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 03:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670212254;
	bh=6jNdE1LGutpFOnq8bzncs5NzDAyAEJon/PbeaFKP8QI=;
	h=To:Subject:From:Date:From;
	b=uCSD7/Pofcil0f44tdyIdxwI9X1jM/E5q6q/Oaq888sYk+Q7yEIhAoAE/t5arB7Gq
	 IHdqxlp/mG27/VQmi64ukE+cuGJY0o6t33NU4MXMnoahc2cK2RT7BjzpCSKkaOaefZ
	 /Rzg9/Zg/mrJdSaqbznTFf5XQrp+cxw2Tk14ypNGy4Q8HaGvYd7mcVE8lEw9kBC8N3
	 aWptIBVMp7jwlQm2OO2ccIQmQO807Djtm2oQf2BgzZr20UDacaEtG/H8kgOYKr7BiK
	 EknA7DZy1fBKgBBCa8yqnDE5NYy8P+D2d3HAmgoh91wPYWyWBZrtYvdQu/rvnikgyH
	 ZzfCCDmcrT4Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 521DAC4321E
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 03:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167021225431.934.9650097990415467693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b30ba88492d3d17763aec20772267f98294afadd3b50e906102cc2cc5a44272a
Date: Mon, 05 Dec 2022 03:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670212254

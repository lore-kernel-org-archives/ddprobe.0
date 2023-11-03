Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED4A2D60A
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 04:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qqk42wBH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91D5BC433C7
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 04:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698986896;
	bh=eW5uDGwpaB6QQ+As202jryqZRQUQ++OudghWfq7p9h4=;
	h=To:Subject:From:Date:From;
	b=qqk42wBHu/p6HQqiLzik5/F2xZoPsi4hfqLJBmpi8m506qZPZleO70bTbkR6926ZP
	 3qaiZ6t8rUk0afTF8Yow6MUyNJjxkjqUv5/FWCnpYNxrdA5RyAxWxM2ZsoXcH7AmG5
	 cZIFfa43CTj1ZAdaK8nYkhi9eicIJr4yip2/mDl+RKiQyi/nPqM7Q/n8WnmtInLSxu
	 J8tP7X99vZGAo8pVZ8HSXMNX/xJdvgZ5zq2g99+o0EDw+U2FREzAqoIEgfOdsSSuau
	 fh6+T5Sf8hU8iH4IiJH3ahxre5jsodtu4s4Oeo+dDXWganjFFaJH+pafqgReGdlFk/
	 J1YMCrU5aoCgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FE2BC4332F
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 04:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169898689643.5141.14697551810940788503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c944eea5e5026242e99074460c69030e9958e4b312fdc0f61c825886e44ff07c
Date: Fri, 03 Nov 2023 04:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698986896

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A5C210ED
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 00:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KPPuZA02"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84EEFC433C8
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 00:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699749496;
	bh=zz1O2/HhzA49cPwVAzTEMc5Cx9PenU+PEdNzXHrEdq0=;
	h=To:Subject:From:Date:From;
	b=KPPuZA02gwORARMw90zYc9rCGRe+vvujT2UEu0TOx16gCz/fIfkTscD1ZIb6IWBwX
	 q58HBaSB3rosP+QoNQnxe4pmtQ6jNxamjOJ6FNWuT59Px5SVTUUNt1zDPp4akVTmEj
	 PDD4a34XVPxdRnm17bIUeaSGosAae9TyIDhicdjVmg6SL1fueGZcMP5IvEKbqpyQov
	 PER4qdNS6rfN7u9H86+OGfchrjI6EAbYIwVJysRg+dKgZowyrbDT+HSX1ccwC79pSY
	 iLC1ZHfBuERJQh1HhVvHP3vVMvrBtIrTmImGFhOv1e9ACnn43ZQAHum6ltpojeclMn
	 hYi5HKlZc1TKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62C53C4332F
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 00:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169974949639.20484.11986819440373044879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 103fec55d2657da169e3bb80b1ca273c9daf9317ca914a16cf023a9c48663ed5
Date: Sun, 12 Nov 2023 00:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699749496

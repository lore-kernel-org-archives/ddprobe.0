Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF1EC7462
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 20:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 876ABC433C1
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 20:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663618853;
	bh=xUUyYoEamMQndvZTxiNa2T3BOGPF3bO06/u438rofx4=;
	h=To:Subject:From:Date:From;
	b=dGIcItSZflZ60BeWvNV7qoOaWuRvOF3WSzRu1ASDjwk1yhqaGG3PjDQpLxYy8ALVO
	 KRRcPwygo2Ny6ABq+xLvK8x3NoK2Sw6CGhUkxZDuiGay4fMvkrovyQkOjF9qrjtUYs
	 lsvL3tootGw6P0VSYBJDbXV9Bkv3aDKIQo3FzZchuZbv20hbSB9cZFZRywTQ1A6OSn
	 0XZ9sB2TAyx3Moz8SAvd34D+y+o17VAYTczpsin80mA6dVpu+/vTWfBbIMZv6L6fY7
	 pxnvdihmtBZCu3eBZnrgoKN0/rqZZOZpy61Ec6ZkAvdxul7U6H7hRWDT2rlCGHbcvS
	 nF8j783UzFv5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65FD3ECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 20:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166361885340.26671.3116549803894761776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c466bc0e9f7cd598c2317ce9f84e2f6f4db86ecf8563f76270da624b386235a
Date: Mon, 19 Sep 2022 20:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663618853

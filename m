Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498AB3FE1
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 14:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAAB7C433EF
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 14:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674658385;
	bh=+rHUMVbX/m5S7PTApZUaevLl9F+527mZ+5yjpg7iIzE=;
	h=To:Subject:From:Date:From;
	b=oVR5lpITqGZIp5/b4BoQ9cXZMXQPsSKLmeUBcT1MNFSnRu2k4cv5NdQlB9KWKuJgX
	 6jZnkA7xJJcSuXKl2TP5xo/XJlKpV/zN6MUNWCkAgEGC+t17vfDVyezrDnYGfXOVxp
	 wbaKb9ktxF7q4TwNNlZMbza+tOYR4Hc1ukpo9O/Hl9sOcXzPrM/jQtet8iqkLxlhh5
	 8itcR+sRoZ3LOlMnIZxZNUZ1xgtwXUrYgDvZ9gOdpkguFFIk+DFYq2HnRUrb91YiE1
	 UzZDwWrHpgh3qXphMrFpa7koZsIYTC1CZ7qo4IZDK/uGO9fDdWWg9EZ8AT4qIK187h
	 BoH3w/YIZ425w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B87ACC54E94
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 14:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167465838574.10507.454605794903214013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 626763ff6779fdee33d436d2634a7137cff2d4a49994309fda9b801e3daa80b8
Date: Wed, 25 Jan 2023 14:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674658385

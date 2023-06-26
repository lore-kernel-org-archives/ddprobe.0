Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 688747F
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 13:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC84EC433C8
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 13:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687784588;
	bh=ofD5j9SUX2pIvkMQjsGIlpKsPrJ1D6AXKRMKgH2tyUM=;
	h=To:Subject:From:Date:From;
	b=TAShC/9QfVw8ftetFOKUigA0TUf7Y/lGABVOwsWUBv+VO018Hwi+9s2CbvozRVgEi
	 jJv4ZGTGf7w06x1V0l6AZ8jICDEz0SgveBmKQJsS+Ah3m75t6lL1Rxx5OFJs8iHZ1K
	 3u1YiLwG+0Ou4jxCreJrbgyDo5pyplEvUalgBZNoc2UH/oJwMNPyHb0yZ9jQMAkzcq
	 TvrEHvabKfInGTqLKOWEMBCglIwyxM6mGCBRPErxnYND66MsIXaVn4SMAM5mTYg1mE
	 u564iw4kpzPoisYOx/fYYmYALCpslhIbb7vkfuiKkaGn4GHOMwf6wDeTkFgXgzIO35
	 3mf2jPiZdXKzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7E8EB64D7
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 13:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168778458870.27940.4214093300469433777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e9b975e7e9c1a64fed9b4808b19808e1b356ec0463ba10a47b02d007a2cb477
Date: Mon, 26 Jun 2023 13:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687784588

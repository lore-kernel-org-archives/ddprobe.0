Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 088A9D267
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 07:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j+gJ6Xl0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80250C433C8
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 07:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699427896;
	bh=KbGuXgUGFJYwLXeXDsQLYNuVDIFAvS906czUZ0I1fuQ=;
	h=To:Subject:From:Date:From;
	b=j+gJ6Xl0ZREGac9tcobv1e9gUj8c8StTpPTiRGVDUTcMlveuVlXGQSE7IwCk26KHe
	 FXHClSa2vEEry01V/oizOqQYbysWedmtrEo+rI6Xk73ubvcgKwa1pD+eI0dB8jWOvf
	 XHErZBW8IPVRsP7lB527kVlMk9DEXROrxiaMVC51XzEUgoIrthBEvtTwxh2X9E6qkQ
	 2qORXawI+r2SOmzNJvil6CR1JGls8yUGiRDUohQScTYFcMNICbfi+bjnmKgbPoHb9m
	 /CghWkclQ1/GXFFIL5/BiJI48eT9opXynGr73Pjd0JyBmeIXMbWHmLBlO7Fl6e8wsQ
	 AZfspQ1Xp1XQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 637DAC4332F
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 07:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169942789639.22162.6774846068719290245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bed3a443c14c1d7bf098fd9675b42bce31ad79cf0ebf17ac48e269dd846cfd5
Date: Wed, 08 Nov 2023 07:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699427896

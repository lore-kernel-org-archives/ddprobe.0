Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17BCB28EB
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 01:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZJ1B1Nh+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86843C433C8
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 01:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703639896;
	bh=ASA9SIL871sEugCLZCVGepYXbz75gqvgAfL6kyg3SGw=;
	h=To:Subject:From:Date:From;
	b=ZJ1B1Nh+2LNaeIxN0c7XFcTIdP3Y0Ai1vo0+WjFBuLXfoTTSLIMri6uCGGP/dC9Kj
	 aYaZpql/NbIXsq42s7QT2g3QU4GSRy0k9Mm/DvAuko04e6oj4CujdX26/7Y3aNujQc
	 WkYJ+bRBpOdFg+lzsg72p8IgofQfU/4BvYCWg0fcsjOeY8Gv32dw8uPvo4+J1DuF04
	 GEk6p6uVdmQepPbRLeb4feDogwwcN0O4SkluSElZfPdowsfk49udqXMKxgefL7qfE8
	 XaZb4ZEu/16ee+9i/Lysk3FRxUsq2aJ2iX81HbmOt+OxEzKZsaF3bIJ680Gni1//35
	 BViKPzmWImEeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A9E8C46CD4
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 01:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170363989640.10450.2119533529899462774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6012f87655b55e6b6975e3432faf419641f426f2ac87c7bed0ba96450b1448a2
Date: Wed, 27 Dec 2023 01:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703639896

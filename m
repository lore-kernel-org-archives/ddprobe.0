Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71675C140
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 23:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8008C433D9
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 23:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692054188;
	bh=yRCXQBno741ikC4TGmJJGYdT1BCr87FDo/zYHvDNWXc=;
	h=To:Subject:From:Date:From;
	b=kamuytVohsfK4SaYIswvLSMZDCokvl6rIg2Cdxqc9SBWj+2V0Rj/cX6vdyG52C2Xb
	 u6XKYCdWuTA+5BUtGIHJNGX1Az+YzYcK8r9BZ9C/Ew4cKnODhxSfMS4sxrq7j3LBb7
	 1foPafdKkxZZ4a6/rKC+49cTB7y9c982BS4rYJUa+pN/8BNKG2D8OOsGDUSGom++ra
	 HC+Wllq4uyk4lg/2HocOBwCvzc2IbhEGj6oOZeIhGfC1ZPRaJl0Ah0jB0NC2yv35hi
	 6qNUxuFWis+FrSeWLVncCzLoQ3DeRsGKM284cUjtim4u0LCaljBVHGFcYIXzM6RdGt
	 SEcLHBTwWZUqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E3AC001B0
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 23:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169205418870.5945.2834509070960366627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a65f235a28366b2addfa94deb7213bc3cf053345e0268b5ecbf85e197d45bea
Date: Mon, 14 Aug 2023 23:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692054188

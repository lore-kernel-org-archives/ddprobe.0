Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5CEB23D4
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 12:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84191C433EF
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 12:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672402887;
	bh=OQhjeiOtzZTRFNSfffS0GmJZwrc62NbaSKWKhc/ib90=;
	h=To:Subject:From:Date:From;
	b=RzJOtsUNT+ZnU4S2+hYdQhI0wYistM802vE09UF2HxtqzLA+BnN89LhActRC/8Is4
	 4oKyzOi/th/zdpkw2uGp2kRCfJwz0JzcAEmYmuMYdpYUG8zvcoNKhkQZxdK1Sy39zr
	 D3kQ1LB/B8X/m9EdNCAtYF+lyYMFHWm+bDmtqCZjOWJHObMBFL2l1vwkVc7Wv87FJ0
	 ORKXBkq62l+x5vyBb6gF8DxoQHqcVZK0QG3m0Ixb5wT3n+Xgj4ByuPZr3oaH/LKsXP
	 2ktKOiBs5IyDNWwLSz/8cz2wcfMjV009nZ1FA86p3JuXNddvw1vLI0U33qIFmBioT7
	 d0OTeUUKZuf6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63355C10F1B
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 12:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167240288739.22011.5291368040307726121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdafa61f60f523efa130d286c8e2f8d7eae0637b626501fab78a878abc70f4fe
Date: Fri, 30 Dec 2022 12:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672402887

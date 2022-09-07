Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAC8E539F
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 11:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71C0CC433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 11:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662548453;
	bh=ITN3gRD8dxNjmVge2tUdLn8PWmQfYKewY8wMXkEepKw=;
	h=To:Subject:From:Date:From;
	b=b7dg65i3fX3I/8/BhGHLWpwXqMDqQPH/yi8VR8i3NDtGjY6cV/051g3wZLvYzDsUP
	 KjGiXVYiSV7k9PlBptwEdQxanpFirpG1dAhRzvWSL+Ntd+acjEBTg5bIeBGlNFaC+g
	 MoYXlpwr0CSAHcEJlik90LpTR4LnGnWyTdkwd0mHD/bhc4t9mdFQEgEwhGtJlM7BM8
	 he3H0mEW2xgh82OG7XxEh9Ro5cCZr9tfC4PfMfoCa1+kyK7j78EE1oqIvoSbCLWHx1
	 tmc4ij1JLvHb2owsYOeMuCOeuPXVwMP5d+sLDmC7FfNuSO+zEX1QaP7GXB0wTQs4Bl
	 cumTWpDA2zrUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 581E3C38145
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 11:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166254845335.18660.18384877620839896029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81958b19a7212aa2c00f35154ba3f29068ba3fe5c70d9afcd4ea75003d9a2c94
Date: Wed, 07 Sep 2022 11:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662548453

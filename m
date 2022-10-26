Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA706EA0
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 02:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A1EAC433D7
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666750853;
	bh=tUut7OEueQaILANaRLW4CMCtwOTWwoHEuIqTpLxDzeg=;
	h=To:Subject:From:Date:From;
	b=IZefq+gmDNwDKkVfL8slKh2+GISTPw62UOUgzTUisvEumJq6P5t3OfyITH7il/evR
	 zy3A7qzskVx88SM/ou06kUL7dI/fE0MWFQ3Cje4rZKHR3xXJ+pmoUakEYLlOWgMYGw
	 F4+4j7T+zQaRYrX5NQl8R8Q6Vd60myjaJ0FtT14AbypDg6FuxmCHRaXdQ9BoOIqAWD
	 WP2rtc5hwapxJJdJXtXPsFRlcIBsL7/9RVnSpGu6p0RpDDpsyIOvb/oyx1nBXeBKRe
	 3Drvb/Sz7f36slWOdUr2wkgS47X9yjvqJQjy8t0nz1j103q548lRCwBhcxT/ujwwXZ
	 3LSccwAVgNJOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5424BC38A2D
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 02:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166675085333.21101.7657126171963247317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4d331506a1dd503531bcaa0b8ac83a54025494d04975cebcc4b0607aeb17615
Date: Wed, 26 Oct 2022 02:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666750853

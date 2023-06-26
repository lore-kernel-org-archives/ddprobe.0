Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8626A46BA
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 10:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0AA3C433CC
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 10:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687776788;
	bh=VDj7DzBuS0ip8sIdPB86cDnzNnoyPAnjZb6PlbVrPVc=;
	h=To:Subject:From:Date:From;
	b=KFX6YtE1oAPp0ipxOThX6M+6zmLTtegg79qIcczEdlgEdFQU0my1XbWjW2jQqlQZe
	 O54VeJzFyXA9DO5Q+piDGq5M7cM9Ni/VCid5ITN9+70J4x7GYXspmXoxeNDDNpDieS
	 rqCK+UkzKosm41hgZISM/F/+TJXW/Uoc+P4QIcoKweO5LxoIQgabBbIs4gV2nyIto9
	 DcnGwExQZgH4jzh3zh2sFzRLQqgge6bO6P4RZVpucb+2N31U1SpvyDK1ZlzaaOI21G
	 oCdejsvhgF5ugihO+rkyLJQF90cYy62FauF84D0jZyGuEuHi73BQ16ASPBQey47YH/
	 auzW7InzV6S4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE690EB64DC
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 10:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168777678876.23956.6549524579669316023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76ac076f85f3e6d54d46abe63e584152f1ebf1ca881f19469a1e9fd8c348e3cd
Date: Mon, 26 Jun 2023 10:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687776788

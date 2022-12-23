Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D651415BE
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 02:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 856E0C433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 02:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671763887;
	bh=OfYU79bQoeYjdDNLG3XKRC2UXCeGbxYTGQuTM1y6dLQ=;
	h=To:Subject:From:Date:From;
	b=GdIuw8WNFsAsPB31U9kOFWthVRzfbzaK3kvQn7Gll+feBgyDkAJlrpXj3fhWVbABt
	 J7n15DHgzBDshGXih3GdI97sgbv/rPCRFwxZbLGvQxvMVgtN1kMk38CfAT8J7FD1En
	 pKaLl+Tz+HCxCBC/+1EvqwL2ps4qru+m29kn7ip1tkUpE6bsl0/fKlDZ2w5Q59+/7z
	 JiZdFCadWQFGh5pUKgmDObKagXgJVPkN1FVLsRco5M0+4LQ9osrXuJ6mzemcYYe6pe
	 wGtF29qxZzOKGp5IIAz9BNuRHdoA/wgXcwoGuQeFShrq2T+y07a1d7c8siOcfkLS7g
	 ag4R3GsPKOukg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6799BC4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 02:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167176388741.13639.18218116366764109611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49ceb368463573e4eac4e35d76648fb4ceb3d92b54c60063466a955250b9fd4b
Date: Fri, 23 Dec 2022 02:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671763887

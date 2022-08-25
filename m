Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C59BC1FC5
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 18:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 775F4C433C1
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 18:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661452252;
	bh=0taj2pIZHr8qk4GvnljSyctNBo3h/PRda+ksilQME60=;
	h=To:Subject:From:Date:From;
	b=tyj5vvfMAGQGPFWY1SwO7PGz0OW9NkzOPNW/uvXV8xc5CYmTD8iGne0YW7dSL+EFc
	 A342IMsdssH1qQ90Ig/F5tXCIVAcMZBRJlujVFWntxPn1nCo7JN/2XVLWsXqQZ5aMQ
	 Kzu1rqZ3dfJm31J3lcMVhiKAdUzm3s/4+2DXxIMXRNpRW2Ba9NZh1wd0Dwox1a9Jzv
	 9IsG4vKDDYLf5wHhiJw0a/yfW1Frpg4HrazZImaf62V3IblYSzEULANDrkk1Tj1AEF
	 DNTFDcMpjNCYpvOMokFjnZlcrsfw6pN6421CWlqLaNQPQlvrO3c0+bOg3HuYWK+bOl
	 LeFFXvjjxofRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B806ECAA24
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 18:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166145225236.942.829536590095947261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9510c5dfeae276c34da11cc5d4f7df6d8deb7c3f202b6c41a08bbd071471ab55
Date: Thu, 25 Aug 2022 18:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661452252

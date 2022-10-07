Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B27204C80
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 20:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70006C433D6
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665172853;
	bh=xmfdYX2yGZIqR+dLB0DAqralSlASSjBCDHIta63jj8M=;
	h=To:Subject:From:Date:From;
	b=JBSEiSQpN6Olel6iMEzd5HewAZGd0W2D1CzrUWruSlxG1ABosWW8D6bPkNkck7xdr
	 glfZ54v9TKEsioOWVVVLFt9fTJxprBew7VtjOtH3Ns4pRBJHPesAFLYIjNISoM8D5E
	 1rjaHa1NWlSdByxnwaTjnzajgU5cac+YmMxTVRgTj60pebx69AY4pNTYUMrJxHVIRK
	 /moMs1aKtVTsQY7yl4sQHUaRj45d095h/W+iLKAd8QSYIcXgzpNqIma32H8g6ai+Me
	 Gc78PITvgJqMdGixCtvZa+YddafGetlFfndYPxhvLJSxTCZHrWC2S6jQhFsbiZf3Uz
	 bB6TkhSJ+/PuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53F08C433FE
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 20:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166517285333.9893.15614215187113144602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b3e18049508dc63ca93f23bcbb9a8e4d103d1b5c0975884bd6af8ae0cdb65e3
Date: Fri, 07 Oct 2022 20:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665172853

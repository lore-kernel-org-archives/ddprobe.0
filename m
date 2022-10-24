Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6A0F659
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 07:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68324C433D7
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 07:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666595453;
	bh=uNkzhonGW+ZIB5bgRLUAgJRWt74HWAjFtegezmb/+68=;
	h=To:Subject:From:Date:From;
	b=AJ2uY5WFGVUvG/Qr/R6uD9VuDVT4SiwYtAR7meLX3AwDRchhrGrCUSVcGzF6g73XG
	 qdwP4dRuW7AclP903pTx+90/OnPJ61Q8TF5m/7ZOv2XcvMIfm57Oo0oSGxkENuXNby
	 XTXH/VjB0LzVOGhVXOQ9WSTUk4GQdFQMzRsz7v84Xm9ImCr0S7R7JdnWB07mUlgMy0
	 7cOMBfnDx1C7RQ1k33ZC3eiNiYE5sBuue83MVlxxaqxGySk36SyDNOKWe7XWG4645b
	 +VtfjQZIxF+niMBfcZut9e8/qQGTOkgu8CDerphlcGeWKpo5mg5AVhKjjvcnYv6HYS
	 BxisFAIHRnYcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E7BDC3A59D
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 07:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166659545331.3801.5640180366599344315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 755001a0715fef4bbb4507111fdfd096e761c6e03f6216786dea4c94d8e75ae2
Date: Mon, 24 Oct 2022 07:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666595453

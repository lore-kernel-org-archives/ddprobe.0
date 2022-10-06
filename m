Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0208632
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 03:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73D6EC433D7
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 03:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665026453;
	bh=ltG1MKXchGniwQChmE9J+7I46yGU2ah+Szm/4SPU3bM=;
	h=To:Subject:From:Date:From;
	b=U5LrohhT0TyL4jYIixzTwDqEsXCPerDjOzOAQ7iQX0CkC6loK0fD4FrjwnJUgq3J8
	 lr2sOmXcYUCKmRPQ6r5iGqe2kPK2zTqgJLSvLPrhN4FHPRWUevBwIKsxerByoyqA6u
	 JURFBgjOnklSPIMp9Gytd9uKVhstxrY1ZBcnQ549hkZ5Avd2FVTUgo6Qx7Yl8TqmCg
	 vlZIQZpeDutE9Oq8fWeKx1LjjB9lhZTxjise0U9Gyq7HmTmF4h0PPr8Yd0wU05Kh4A
	 vwfZaSvLh2i54ZPTT+Ty85ZQuqYKA/q0LiQ0WkFMUeWLkOTSHrGmH6p31/1olnWp2t
	 LHD60dny5GVlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55F7EC433F5
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 03:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166502645334.19970.1258795192145248635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d574368070d7b55026c95ee908a233cca5dee240e407d67aef4d2ecc467de224
Date: Thu, 06 Oct 2022 03:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665026453

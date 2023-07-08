Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D98F53B5
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 13:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3522C433C7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 13:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688824028;
	bh=QZDXbI9f4+Bg51z8nmeZDVp+fhs0IhUBN2+jvb78hsI=;
	h=To:Subject:From:Date:From;
	b=GwgjzsECSaZTm+yto0k+BetmNzYASaLe7s3XPdw9OYq7i+KMwSEDfNN2CmrrKvMcT
	 0WzROQn2baUVD5W7fWTOV4ll2Nk4bgdRc10niTNrshgj3fyUj6NqsFWT1AFofk9Mmk
	 hWn3PSomyjcCyngQe4rNdUtb2YY9dDsFiEpFQ6T53AJ6LnhSF53ijWBOW84cvExded
	 RgFWQWyu91D/gcImo2MHW/H8ojzfPQgPhrybBxam97zyiXw5huxr3O5YTDO6Tu8UkI
	 yzwnW7o/sFZQtjBCaNTX/xzRgRR6yyN97SIQqoRQBE0/yR1WVz9ocB6Dz1PXfgVKMQ
	 gOt5gjzuKJQFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2EF2EB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 13:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168882402868.20018.13154567532765879130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2d3d93d533791dfbcbd0528e6bff09dbca2ff5801ad2e53398f5f17d1ed3511
Date: Sat, 08 Jul 2023 13:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688824028

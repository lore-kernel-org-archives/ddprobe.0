Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 528DB134CC
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 17:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD022C433C7
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 17:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692899648;
	bh=Te+9TqQiOcuOviTS1RO9ZERQ9l3gH2QiiY27b85cpdk=;
	h=To:Subject:From:Date:From;
	b=tVoIcRfShL352EtOqsOw8pKMMeLtKjXh0WJNtDLb4CcdnhGPz2UugGGxHEejXoxjw
	 gXU4TDknXdrxB5KpdPl7c9nXH3XeHWN76CGF2hRSA1dHAsiWmc7YdeGMa9HzmZmYOw
	 1ddi5dlO/SpuX+xjqIDWxbjQAEdzXexSEGDo+Yf6MwCJyAtmwpXU1XPjj6iEUJ+RD5
	 n7cw1Nsa5Yu/JKaBBq1f+XFjb4mpiqeqEA6s/3U3R5/Hele3g9HFxBYT+sbGpI8eaF
	 lHvhXGGiLjLbpWGAE+PNDdDHOKUv23lud4ef25Mx0Px9nHf24WM2uC9ANokLBY1nGy
	 U5af9PDQE1qZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE518C71153
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 17:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169289964870.10868.16300467273052724024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 941ccd1bd0c49beca751442650401986a791632d9f4d4e93dd3945dd7667f005
Date: Thu, 24 Aug 2023 17:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692899648

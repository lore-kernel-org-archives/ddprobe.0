Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C56B01852
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 04:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FD0CC433D6
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 04:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666843254;
	bh=naiHlEoBcXz8BctqVs/0b7U6o8y3ZerCwReqb+v/XfI=;
	h=To:Subject:From:Date:From;
	b=pmyKExMJ+pQacaCk9MA1rqmhZwj6VJs9cjbnCydWo4NZwZQffDgmL6zWjtcxOglvs
	 iZ7n+Xt0PPlrtRDkiGuWCXBxXtF4GzTol7Rb++f9H7qMeYC6Li8noCE9V27JkXT5kq
	 iuv2I4WDpVbmO783zZu85X6qcq9yeY4dY08JHN3Muui1K9IgA/VPNbeYnSSS1Cm79f
	 IY4ARz2GaSqMd+WZp2Fr2A2PQGvT0TGyxFPReGZsJqYHMjYDvLP39E+95nMy8v3CPf
	 ZcgnO4C5JiSTXWmQXzHiuFJGifAJVy1oTulbwvjFgjSMlDfNXv71bFg/T28447BB3T
	 ZG5tq4coSI//A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 552F3C38A2D
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 04:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166684325434.18834.9312199270155625868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 721e9cddef747d1af38b9ce60524c301d30b6459f70a104461a2aef8bb390aba
Date: Thu, 27 Oct 2022 04:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666843254

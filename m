Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D97D6FA5
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 05:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ns5CVajf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D826C433C8
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 05:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699681696;
	bh=dbwu6shZjU1aRRVTmRQo+nKGRBtKCmcBfFQua7B3fl0=;
	h=To:Subject:From:Date:From;
	b=ns5CVajf2YBxPtNkiK1tpd/xTw71Da9qOwDH2PzjUIn6rrHFgq4xbmv0gakIcZ4lN
	 jkApntTk9xZXff2qSlIoInvg7CLmiEtEflaWzHHYOUNVrWw2XWoXRDNUlA3dMQ47zz
	 uGJ4K33KW6NjnzKY2QFfPPHDf6UyJpEKE0iLRlOx3TLC5dVGXU2+XiNwSZH7/wcxYI
	 10DuO/afwq3TP+sxwNZAQl74sNs7a7EeVqhNAo8BfkGT+50CrquVpwDnCBkE4IPoUw
	 CqKSd814V8yRQOEwp6aHXh1S/D3tbqgUnLBO1plh5rFuGIyOBHDz9n9u+Tdv2M+jMH
	 x/RRg0OtuBRGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70A7CC4332F
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 05:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169968169640.18699.10363215039785517179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff108ae96d73e596b798a60df880b725e0d60538490f7f527f2d78b4bb451860
Date: Sat, 11 Nov 2023 05:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699681696

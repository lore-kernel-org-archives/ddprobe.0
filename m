Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36EAE79EA
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 05:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JFE+oe5d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CE0FC433C8
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 05:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699076896;
	bh=akm/C+TNa/Q1dnCwcTTWN1eqAryTNnmEWqkYiaONits=;
	h=To:Subject:From:Date:From;
	b=JFE+oe5drh1EgrTQ0V5X0tAcX1lPLhy+mwJna2NQiZe3hF69NO2VrmJMvlPdPR+Tk
	 RYXBe9WvOBcQiDzBCh49MfUEOlLoXRCZ8TYpeUL9fUbZ41dgpFYGLbKUFTSW5q9Udv
	 +B1uwIh5+vs1avOttdfBwVIvxngkCviRw3GmCb5S906IxBpVIFkcw0EqEU1/zZZXGD
	 oBhPslKmb5pKnAtKWAoUHMG1rSzGXA9u6hGKMz1XBOJkNm7v1xe60MfILD8lAFBi+5
	 OMqH2uUZEzsQf2G51hkEpb8sodkhyyIgitP6p5g8rBNexJzd/XfP4UJoq46KwvYFku
	 F52UBv5+xgT1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CBAFC4332F
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 05:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169907689641.12622.12213657127196093331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e685a6edfdb921edfc357a3c843b1bd9008e693c36dc5ceb008fb2a6b81f2811
Date: Sat, 04 Nov 2023 05:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699076896

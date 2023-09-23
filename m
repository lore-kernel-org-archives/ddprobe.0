Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64CF91D547
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 16:15:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDE4EC433C7
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 16:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695485708;
	bh=6iE7dM/oPtwFPtbyxxZY207e8RL30RHVC0oHlzXK/DM=;
	h=To:Subject:From:Date:From;
	b=lGm3R/L0n4Lo6B3uGqXV9L/aSpBARMdXxpArqtgaC3ZJJ11ydU8eKFBw9yXBV13R5
	 YXsoyPeQXnIrx9EzUXAbqXTvTYU2QGuIOKX33NrSnKnCmkp/vPTJaXADVbvYP7dI/m
	 bGNDeTmQm6dudFWKyhtwyQoUG3bh8FzHZ9px6Dzo+QUyBm4aMSOs0diWTD5/CgKMN8
	 bnFxal10eupPWfNPkWUym8Xu6rhHnHD2/q/cdbvvba9Qr7E7DYU8ad22aiSVqnSUkw
	 9AkI0JRovzjymTyiA0rDm2hbeV0JoMdXpqJ7YKC8b+hkvnAaKFU9zeh5HnPJig2cVb
	 McIFZXBccLAJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8EE8CE7A89
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 16:15:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169548570874.5115.10622852437552572004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 866de7b3940426218aa553e8a3f9862e05de841063d55a2e8421bb9a24f061eb
Date: Sat, 23 Sep 2023 16:15:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695485708

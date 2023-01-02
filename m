Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB5B44430
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 15:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80308C433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 15:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672674087;
	bh=eC/ybPadDxNSECjST266rSfZzPigU7Do23G5i4jO420=;
	h=To:Subject:From:Date:From;
	b=RIx6B+N6QAIGScAr3xwbvO/ZGAhifA2DFQMFuw5siB618Mc3lIOfe0uw/nN51UeTy
	 AlpBBedUPMB2nqnFZd3NoviZF5xwGDTNWOVUWO+8D/yM1EpL/4/eE/LwoXDzFsMuf6
	 bhFJ7+HbA/hYMAN0XzwyAXpAcnwUvGAJ44gaMUIRIfbugiPAgDHENtXK0Dri3gYAP0
	 OGnmCMLWgbybIlHNAyLBcCDNFzY+vZtrIIkcHptmab5lT4bs1ktkQW71d7DUyXsLse
	 0S3sG81TuYdNd3enKD0fb1WbR0qiWZZ4LDJJf2jAne74l+8BSRQbb+ucHIWhHaUXpU
	 MynQDVC+n0hKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6363EC3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 15:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167267408740.3150.655977621507133373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e82f579c61b45b000f03db60e4877c2927fdcc59687616bc938bdb783c2a8f8
Date: Mon, 02 Jan 2023 15:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672674087

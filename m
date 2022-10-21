Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD6313D60
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 18:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E7C2C433C1
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 18:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666378253;
	bh=T9bjRcB2ly+xcQKYMQmy4J8wlq3cb1SbeQI3UgU3MQI=;
	h=To:Subject:From:Date:From;
	b=T0pHg/zsEDaSSn9AXj81o0waByqZR8kJXRj4Cp1GOAMQn354Dbjodkq53+BTuAA9Q
	 AH5GGSGWqZjBzD3R5qL2DmJm8OgpjJSlC2R4c8HjZFbR94NeXd7MFD3cmkn4CyS+Ke
	 bc9kHnEeiD7CVrzjoZDezcAdIDDksYgstD3ky1RhjBSgoOzEiOqP93CAYM2Ip+SdTl
	 eIoj7n/CzjhgLoVXtzvw3ueP8UWqY+4bq68Th05tEoGzpctdkh3J9HVieSKnayXUsF
	 DB+JdqEpWMWiIryo2xAcvmL+kBBOgYMaKzMImk85g8W3eAuv5ht6MZjicXfuCroday
	 7pR0Ae6b8nV1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57DE0C433FE
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 18:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166637825335.4002.15873182137944960828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 374f2fb1ff9bdd24c28bc9f6b201c39de0466fe87c1a8e73fb1982874618537e
Date: Fri, 21 Oct 2022 18:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666378253

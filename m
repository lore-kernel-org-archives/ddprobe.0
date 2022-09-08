Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C78D67C
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 09:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AA30C433C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 09:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662628253;
	bh=WLOVI3hSqGDYzGq2L3bJ1zS7fQjVISx6kKp1lwa82i8=;
	h=To:Subject:From:Date:From;
	b=i+bU1G50F5Px0xEEx4d/OoERGqD8skXBGSDS3OKYUSXsaA0EQioRg8GhoGfqe/XfA
	 cwtc9idEfOERNYhu/PR195Bc8o+SX9u78tcTRL46CIHwOwsgXQ2Yvx1StN981RpQmb
	 UJ4GuNxXlfLqtidhlng81ljju3LzTw2ejigm/r2eJPOjJxgfUT+RaJ//uamtyjTHvV
	 HinZZCTVHftJqx26dgq2FS4QhJn1ETU32n4WXn/nognMJOgYMAauOL7/ay3nYIaD6u
	 sKwYXBQqlh2WcUn/4Y1VkSo3v/Oh34XMT860J6hkgzEdepHKnsHS2bMgmkry/F6XQa
	 v88PtX5Tmqrww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51238ECAAD5
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 09:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166262825332.20009.14036597025478324423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bab7ef0c1bac164efb4da6753fcfbc4fa952be2ea36098a56b4b21c4e1b8883
Date: Thu, 08 Sep 2022 09:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662628253

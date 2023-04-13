Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D2CBA32
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 19:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2535C433EF
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 19:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681413545;
	bh=Jp8tMubgYczeeG+13hkYdEjsE547NDiv1dA5c4s+GQ8=;
	h=To:Subject:From:Date:From;
	b=DF0p4WWtRGboiVLpmDv31Jv0WDl47KiZwzktzGDOp9+TDyr8ug5AWzfXztulfa0PB
	 wGgNeQ1P1mIikfFyUERfP1K9x1n5gSAL8RXJJe6z4kTeDVekEmy8z2OvMZ6YqulKZH
	 fJUqLMcE951N0iYWukY2ShxiZoNFRGc5mKBwhRzm3pLPmg9JVLcjHdXZ7YoFRYxini
	 a+di3+xsDiSE2FTMlotj6aEzrC9zbpoOnt0O/6pueNETRJ4jqPUDf8ukdc3N4+2+IW
	 Z2Od03YMP9VGFL5Uvf09hnr4KrUbyG/cJuEU4TFcWl1Mw1ua1keGEEB73/1NyjGi34
	 nRw6KcscGaZ+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3C1FC77B61
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 19:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168141354579.29764.10726158569552013610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dc4ccdeb5fd0960f56785db69b66c79e3d0630311f9c004c3dfcfaa48f34d43
Date: Thu, 13 Apr 2023 19:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681413545

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AFD6136A
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 22:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D18F2C433C8
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 22:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686695228;
	bh=Iea7l2HYEzrwQ0IgeovtaosyY4+T+/671j3bsdN2dW0=;
	h=To:Subject:From:Date:From;
	b=EhtOvdywQbqS/yDznWadMgWr2eSxUjl6OIxL+DGEk7ScugJcxdWS92B1oGCWGCYgB
	 QSJfCbLAIZHYb1tBOqxPPrSpFIMFE5si17ZTQXPovBWnDS/BM++bpCDZpwjOLWf8Zd
	 Wvct/ODokIcxYBjUxw1oCVIn+1DLE1sUbyMBotMf+j7z2h5P8wkr0t9dcWlEPbSFFf
	 k8Tt+aB1yeRE+Q2U4C9HFhn6nKN0Uv0HLxtyb8OdYhEdP4umkAHtgZ+jv0Ka8CkNJi
	 kMcMNvtiTeH0fNyz/VuZHizrVY9d7y+ufU3/GAULc9qAvkQsKNN09jsOk3M6TDFEzN
	 diFPZ7RQsomKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B40A0EB64D7
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 22:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168669522871.25088.9355960728595232692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79310a17781dd84a98e7a90ae92afb7083ce8cc0cadf44da7398e0a97ddec460
Date: Tue, 13 Jun 2023 22:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686695228

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C103217ED
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 15:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73481C433D7
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665588653;
	bh=n1mgSerQhqLmBACbCi5Qpra7sPvZNwoTDpgHtQ5fxFw=;
	h=To:Subject:From:Date:From;
	b=jzSfxMPk1WoVFdx0eJkICPB+Kf6X9/VSf6+qpP/0n2mb192Y5xub+fAB+fvMKLVC6
	 pLMjpbj6xOgf0tk4iq3OykIhbDoBwOHkUxzZSbaZ1wu62dopX9iwEFhco9y2NmtHpv
	 jUWkN/76ca/tmFTAcrmSPkCAgxzjybl6D8U3JJZamStXEsq2lLlD6vshGgcKMu1VHa
	 Kti7s3yncUrCO9mNwT44Bfs1rI7dDBOtbgwleq5DcE4UnnTXfaStVXM8BUa04klTgq
	 VJFvHgtOQYSrXS8qGHuERv7sf4VT6gocM/W7gd9oT1IdFcUxhUoaFajJ+5+U2aL3bp
	 4MpBRjof7GjRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58333C4332F
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 15:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166558865335.20991.15498525342141627836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d723709ad257acc75706935f6b37cad516586f51967e821197b7154dcfbab11a
Date: Wed, 12 Oct 2022 15:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665588653

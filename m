Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C55983FF9
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 16:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E6E8C433D7
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 16:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663174253;
	bh=AXOW0E34GkDm6eA1PhzZTZbE43BIWRJohOiXbT07g2g=;
	h=To:Subject:From:Date:From;
	b=R7AEjP4LAq/cM2NupTQiIvEgd1l0jYejOliYCVfCVGRPB4UYL7P10c2b2jhXTHBMI
	 Oor38ChwdvGSOZiAXTRL0TUQnUeujuboKIFq2bX6gPpH5lEVFfrBdfDJDHpCrhmKvW
	 fh3AixSikfGXr/8J9ZOKF2SEIBT4Pu4di36urwXYGLUP5jQEWZWxxROHJyQKJ6HLE2
	 5UAf3IggnOcTSE1Lpco/UpQKspYfMzUsUs9owebEPG4PmywsCRziUsK6mk9hD77Iek
	 RTQ3c0ygTmh1VDmA+SqhLIHb/yMf1TlMmlBRdvZXwL36Ve7fFGsF5doGdwsJkS05zm
	 N+owyPGEvOnvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51716ECAAD3
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 16:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166317425332.28378.18317741966776733381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b3e04cb2afdea67449511297fc4c1c2c1570829b3ea0e6c7a6bf432d0cd2b04
Date: Wed, 14 Sep 2022 16:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663174253

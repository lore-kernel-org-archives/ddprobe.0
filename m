Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C482162E
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 08:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EB93C433D7
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 08:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661846453;
	bh=IChgC2Djvv0CSg/fVggsd5kmWaFuFB/YSbQ2ph926Ro=;
	h=To:Subject:From:Date:From;
	b=mUoW+TJ7UrV7QHTg8sCvPq3xlPAZOSf2QBigm7ak6KH270tWYpqtbqIphVCmDhxfE
	 j6r4xN4NWQrRaetUcnGVqgYS9gjcCHLS4yK6hpfLxpcI7fi5Ouf1mZeaMZJK7I/24b
	 and2J9TZ+bk4Up+bSOyOUnQZkKb2raCRRQXJklEPF3tHrufHukcS7dvrI+6okmpw8o
	 GZS35AptXtUiixe9hxphq0p09IgTLi6Ziqy1tVobdNNNZ9c+RauWjv8sSvDw0FXgoQ
	 Niu7bjeZy6B0Nv90/9OYU1sQXyyO2TXySHlrESoEizLrZXwi9x/SzYtD7fjHx28Ett
	 WKqVNLgSL8NNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5136BECAAA1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 08:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166184645332.31649.949654260356441975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e942fc4a7d86ba2fc4c21a62a985b8f7f49b1dd63178233300c15413b0ee1158
Date: Tue, 30 Aug 2022 08:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661846453

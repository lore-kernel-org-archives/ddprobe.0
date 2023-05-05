Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32490EDE
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 02:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCFA0C433D2
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 02:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683254765;
	bh=KpYxMn9YmFRzYPtljW+DGO4fEE9GNTGGOr3MlbAwkMQ=;
	h=To:Subject:From:Date:From;
	b=QMNqvAzas628KccjXH/a+EgCuGJtfcjpy3s1nikyjehq30LqrrP3APgR4kL4wNwQ4
	 WuM2P5kX02XtotMGmPg/ufHR/dHxpr5CUqKrhwqLB/P+x5nFYQUuHnlqLDlJhAbgif
	 ouiKynSDLndStMTDffvzifND5E7fcWlASXpDqjGr/jolxInPkHTq5ZlHiwAIT67I3U
	 pUkM+k1xdZutSj/hst9nTDaRT8eYLrkloXXr1eHM0DzEWR/Lb1zeqYyXORO/RfzqOa
	 I5zdNR9VUDwGc8RFaMMzgLF7RpKj6HwvRwOnrEx/G2Fx8yrzgr3CeX874x8J7y0csz
	 tP/3QsaDXp0Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2B76C77B73
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 02:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168325476578.10635.5141268798226354190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5033bd9191c43014367a603e3419a7aeec553e59a9e1865689196d8987592452
Date: Fri, 05 May 2023 02:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683254765

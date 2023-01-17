Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9A241FA0
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 06:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 972C8C433EF
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 06:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673935287;
	bh=MM03aUek72hAcreLW61QYxDmlugL1kQVWpR7vEc//0w=;
	h=To:Subject:From:Date:From;
	b=RMr18l4c8mUyHv4o0mivGBIuyVUJltky1dc45ClbQ/b8Ub4szJ11dnhy5E8mpKIxC
	 QA9sl5g/hkQuiYWAfbF+EMRzmux1Fsutuf5voKoMzDMCZpzqnmuaR2KmsNIpcY2Txd
	 b16VPxZGw/e9GsTTF0NUgf8tc/8j21n3C5+5GTDK8ck72Yunzh0gO9ykVR1MrKbIDo
	 xcYiBq1Bwn6meSXpu0JsG3wuARW6njtkYAWHizl9gcq5KxL+aAfJVcEtT058lz7SDK
	 /KHVtrjva35z98CBSsC+HgnMNd2etpksXkSE4xSWPkZwLjHrtWLz+XuI5fZsoNarh0
	 Gtzhl2NC8+OVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7249BC63797
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 06:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167393528745.14445.9074126938859872172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca37c75f30a909d75ced0c485e1fc51daac629c108949257ecb2c285903af22e
Date: Tue, 17 Jan 2023 06:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673935287

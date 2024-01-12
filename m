Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAB336DD08
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 16:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uq3cLsgd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 896E7C433F1
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 16:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705078096;
	bh=YesRN082etR2WRNkmYQdQz7PJdTsycypibSyzTWsGCI=;
	h=To:Subject:From:Date:From;
	b=uq3cLsgdxmMxTqot4jSjZjcOZG5oZwvW54RljRDDSYDU/zEGf06KWKJop5V+P10cD
	 fqnbkIJv7GHy1Em9jq1k4ZzA/1LrK1bHzgtxL1BtnadW7pFka0kJpxc5b2x7Z1PyQf
	 T2WxnWSYW8sfgu1Q48J14AbbIIFG4P+vSAnezcjdoNXFHs6USWVCV+xdF5fADzxv2V
	 qDlzyaJ2C7/AZZpwSM4px2l5F7Ddv7anZpNX73rYLqnU3xmP1SrKenl1aZlxdyf4Ui
	 NuATJ4geRQrE/kXxqBqlWD7rJjNlJwbKnw4HTQO+2dycK8NB2uwvRcibtxAYq2Jltm
	 zVXRKMfxKcZ1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CFDDC4706C
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 16:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170507809643.27353.7627817537377254496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40916a5435cfdd7b62db55ae15ae29e2835f75698bfeb4030472b157841d8868
Date: Fri, 12 Jan 2024 16:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705078096

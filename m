Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCE4033FF
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 21:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 725EEC433D6
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 21:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664485853;
	bh=7Ct1dFVMG6Lv9SowRoTUO1aS+ohrhBlZQn1PSQWwMm8=;
	h=To:Subject:From:Date:From;
	b=NrYXaiCshKjMdmXzhfq+QKBuhdpDNItee+i7/0ogs350IEWPUtwjv+GU5BpG98brr
	 Gm40efks8y0xsxC7WDXOcw3XrEZZt6Mf40FraK4Qmdlq5rVZ7siBkFIrmyJtyH6TeZ
	 eNQKIlZ+9J6yfyw/JKYNyM36FNXt2tQAWwZcpA5tSMOYOJJGqjzKwOBSLrDL7IJW47
	 yutYmi7Fm2pv9pxweBPjaAYH+qnYqZetz0xVTVAAqOQRVQFf/yyU5KhXU94BON3fVX
	 C/U9l6tIlbZVB2A9guSxZTSBgAPuQjHsxwdG1TWud1bgOMsnyEh0E94A1kP48KRrge
	 kIIdpLaEhK+sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 550C5C433F5
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 21:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166448585334.14705.6286460195264873032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5505436c69e4ded86e4455bda05c9f687c9427754b0d4e396b9ea4f2b93aad6d
Date: Thu, 29 Sep 2022 21:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664485853

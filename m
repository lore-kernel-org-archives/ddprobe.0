Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D5063FF5
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 06:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a526QSZd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4F88C433C8
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 06:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697179628;
	bh=YTGesBDbNXrNvy+/OqC7RFMyQ+dbDO5VfCe+/HJZ7tA=;
	h=To:Subject:From:Date:From;
	b=a526QSZd0/WGNv5wrsWTNAWg71DTSHmJh+BPDchoTr3AodxWc/zCbNQBahCqUCYnh
	 KaPs6kVLV1A6E2PLabZ6TiPzIF8s/FaHcTN+Rcc9KMREh0TaQGERToLtfGdUk0JIPx
	 ZAvmqX7ArThSKO2SS7vOOmtXCP9lipoAf/d4JtGeqCXRxVaaBC2ghlSLONdcM/bJSj
	 8NTD7kJ01kNLRdGABLTsMYYpR3pI2kmdxHRtamDUgz30pe3iJzmLCagd45+H+uUdrx
	 6LnAjh6idOoS1oeKickk1cCrgapGlY3DAEh6UTL3VNFTzXOG1Aitx0D/VEoh1Iutog
	 27bDfKHmlEL4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9374CDB483
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 06:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169717962868.11890.9620653273219004233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f657b57059ad5c681eabec849777d89f3bd8c7493657ff0fb7b2dca2dc7f53d6
Date: Fri, 13 Oct 2023 06:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697179628

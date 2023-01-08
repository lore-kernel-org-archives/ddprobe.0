Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5DA21FD0
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 13:01:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C2AEC433D2
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 13:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673182888;
	bh=M+5Qfl0ZKv2tvE2nPZU4cSgdZTzLFBXZbpLIXb1bXoA=;
	h=To:Subject:From:Date:From;
	b=HAtfdqSSz27Lft3ujaBcjVuRNq4Zw8HWJBwswQCfsdIcaGzGwehBfG2whszR70mZf
	 KaCY2A3FUXYOASmNso/1li8jr+v5Bemem9MEPZhCcVEJXagcQRxgQDnzrgxk4QRzLm
	 cKBlOd8GZO88Y+62+uggTLnfBfkLEDLuZ4wLDrP+IW6qWJzpeHu7JY0rJhaIse1BLG
	 sRe6Hu8anWJy+0E5NDAPboMhJsJ+gcaQYIhcYeOxH04kDw3DfKRv4JFXlHjhdR2+kv
	 hdrO8BVraxhAV4kulGOz0O8nLyCyZp+/gBpsyNpHUachewx8QtoUJQlVtk2PDSGmAC
	 uBcnzI3O5E5RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F39CC53210
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 13:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167318288738.14170.3191476596129163291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b62df9b094d9c2db0cb3e94d8dc35e2cc8ead532f02bf2bb8add9f9ba472191
Date: Sun, 08 Jan 2023 13:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673182887

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1437EC0
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 11:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ED74C433C1
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 11:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662808253;
	bh=OVDQDdOVEX+3EHm2ePa9wavqjqeugftObgCoksiXgc4=;
	h=To:Subject:From:Date:From;
	b=f87iVWBxEnePzOSrVVbt6zFwJJZb0JBTHeW0r7L+qXcQzJUo3W56Lm9s3+uidhLqY
	 kPcnsn71veQDPhK+OmxwXVLINFHqTz5a+zyuQ/zA94kKSoU9osATV3JVmTt6kUQTYT
	 0OaLfZ/j5xdpXHd9kcKwSV2KcvC6RZdnPndboNQjzebDTxN6bv6m95ulNpAQRsbh0p
	 OfpCmQFm7LZSwdLOo7k8XSZo5dFvi3nXs85lvmUmGh5Upa2PfBniUYK3hq3lOod7gQ
	 xdtJps3SyQs2/lEyIAVYaPSJ6e5SKnQLf+5IDCqg9q8d5vXkL7DN+ZiHBxiOoqzHk+
	 3D2yLS5dXgl9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54B27ECAAD5
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 11:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166280825334.28562.10583160105090777856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 243fbede5b1cddf8094afff6bdbe8a78b40a05f95d5d7b3f3a0014f8bafd199b
Date: Sat, 10 Sep 2022 11:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662808253

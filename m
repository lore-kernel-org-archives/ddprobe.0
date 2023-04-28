Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412B93D67
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 16:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E796DC433EF
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 16:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682698505;
	bh=GQYTiaJIT7CNQ4fH8HzXFmsz/epWnS+YwW16UMUx1Nw=;
	h=To:Subject:From:Date:From;
	b=Al3HArkF+eJX2cMh83ez1ybxvw57jZC9E7lOjQj6cqvB440mdz1+BIe/dCjDpu7Oo
	 RVHwY7Fb7cXsZUiRxPmN1a2obMFDeAFvEyYxMqy1zsBs0qIaSMrfhnn0i/sAe3ZmYI
	 /lqgnXqpvuT6YzkPlwuRtRZiTr2cF5Bbs0Xea+a8GfmNx5pQVhnseyIp/LAeXxlDBX
	 voM7OL8GlPMXZoih8x2XtPVKZAO9UWWiJ2RBumhBlYrZ4vOqMWm4VkgFkTZA+x/KSl
	 3X6p/M2fPkEUIztF/KVSO5KmSCI/ovzWg/yFbgIOcW6gNxnVI+H8Hn6XAwSGjOQq5d
	 k8yVrlbmRi95Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C400EC77B60
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 16:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168269850577.14590.14381867643353903682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad6507a229035c43a86fd8d9fc4e7e40e6fa5ab9ebd9aed384d87ced0d4cf0e3
Date: Fri, 28 Apr 2023 16:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682698505

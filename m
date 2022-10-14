Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDEEC4433
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 21:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 709D5C433C1
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 21:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665781253;
	bh=gwROMSy36BXHDpE9vmbckHlrJhMV1mcPx1sj7lFHaJw=;
	h=To:Subject:From:Date:From;
	b=XFjuufkfksmdPXOB3IRvwrulHISYdOpils68r0mex+y5kIYqumwQXoqjM4jKhBoeH
	 SCwg8AxCd6R140xylmfGWE1Pj/F/r2/8ouL0Qpc2Y7OIh8dO0lLtzKyBtuBXwqgI/H
	 VbX8T4ZOqUVH9HFDrgeXKZVG/S1y4uk8agxuLQjADPVKigvPv32MKi6AVpRo95ZIE6
	 2WG/V9zHhV3CJe08ljeWOOg5X6ma2BuDgWA1+Bblr59fSXA2ySLBeKTnrm1bCaa9Nm
	 EIx1Y0aJZrzMNneD95QfDhqGqSuXH5envuQu6u6npwhX3P+KWzg55vdGfOrm6YZGbi
	 JAZ6ohJRiZ+mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5643EC433FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 21:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166578125334.13921.18201907523575593605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 554f5aa7eae159aa0e647df28e6674c6fc75c2897841fa3cd13c1950a3917e69
Date: Fri, 14 Oct 2022 21:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665781253

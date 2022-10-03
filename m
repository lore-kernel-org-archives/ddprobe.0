Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5CE87B
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 01:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70B48C433D6
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664761253;
	bh=JsYJQjwoELTCuLPlMV4BY+MfImuM6Jwvwe1twdjacGs=;
	h=To:Subject:From:Date:From;
	b=kryhHoBdU7n9zc6eiHRgX5D9XswywTV90NzMIyXV7cDfpStGS/uJNs9TERni5VS2i
	 bISfCCniZgi7C+uyEwVZ5GAX2MKExzeaKxm5yBZUMacRa3e/lHX+f3r81jPCvC6i/g
	 yCIYgGUSTNJVnjpA9211DKI9PGainaJYRzkCNHWMVOM1mLlLIvTZHWb86jRmHTYXfu
	 TwDrH7NMe7zeOsJMDnR0CPg076XYKArmJtTBxN8Qf22DgoVdaIzHk38wKENXJXFp0U
	 ynHIUHaVeXBOV6r4vfQFe3XiOC9mJe+1Ai45YvuPVmRY+OQ6+f5KlURfrs19ioaFCs
	 tt6TyhZQOJa1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58105C433F5
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 01:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166476125332.9811.1441567840753129709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a79c424960c45432f9e2fbeaf919a76b1642bcb47e1b0d29fbcd6583dcc4eb49
Date: Mon, 03 Oct 2022 01:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664761253

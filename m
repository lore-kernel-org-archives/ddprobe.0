Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0DEE184E
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 15:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7380DC433C1
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 15:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668266454;
	bh=gnxlaWlYFAmGzM2A4ntcRWa1e5yFq0+OncVAfnnYfoU=;
	h=To:Subject:From:Date:From;
	b=OdAHDLlXQMZuTEv2AcMlxccprkodJtvo6EazV9cSpqtQbUrJw1TJ4oNxcC23lyfFE
	 0v+vsfNHtbO5NXJ89EhlVfso4Kjw2Naw8f2PZVwr+b5V9W+vrQIP0KcwLPeIZ5yDjZ
	 +y0cEvOlArcCqziJ6+PCWXFi+4ILCN1hjW2KAJUU7LfoD/gjcIKrUw/OQTASCOLmcX
	 znjGeVXe+/gBTHCwwQn6cNtExvCL3n6vvrDFVkNlWC5bkA3TPRd5qTRnOX/m9d1Ed0
	 lWbmeu2dmyI46F44zZDo9ObF5EBGEN2xo6rMMkLfrTI/T7lULzFkeNiJhz0Lv+QEeO
	 uTyoaj6+Tj/aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ACB8C433FE
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 15:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166826645436.30395.9001677044597193195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79aaa8854c57397358056a803481a4c37c50d964d3255763dc0752ee319b0335
Date: Sat, 12 Nov 2022 15:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668266454

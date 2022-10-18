Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD44F1857
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 02:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ABC1C433D6
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666061453;
	bh=Sga4dJ5cY33IE/LPnkylTMrnKT0fCQyDQJN5slvK8FU=;
	h=To:Subject:From:Date:From;
	b=YcQSBcXl6157NdFtRWZLjMLQ2QNJEushaeWHlXQ2cz4uC0EhDhS/gkx7NZqzMrIG0
	 U+fwLv5Z2jUQEPxrVQyMLGi9XiiUpR9uUmxPx1w24I3h+BhDuJf+64PWsezxovqCSM
	 RhIcr9px7lutIdJLbnzUxaO3dMHSSaGhy0L1MoCfe1jBDiRZF3KVU9MSjnITsQ1Sp/
	 rGQqcWNompSVGby+R1h/aF+82vINXW8wRdAXnymx157OxqdA5K24vNhpsvEgU+nen0
	 jOPIXEFk+3dkDCZ8//Rh3oQWunWvCX5mKr5yVxOyHjM7r/qHSOtBYNw1IHrjRPm35H
	 UeTdiZcVeLfWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 512EBC433FE
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 02:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166606145332.7632.5732003393132804774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e41519b51af81922e60cd7226ecb3bdf0d2fca2f0d8d4eb10669945ceaf39f1a
Date: Tue, 18 Oct 2022 02:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666061453

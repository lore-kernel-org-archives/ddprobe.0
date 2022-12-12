Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD8C17475
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 23:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7834FC433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 23:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670886687;
	bh=UyhxwMJdi4r3LYoWCPOPMsnPQWoOowADxRCNXNurgqo=;
	h=To:Subject:From:Date:From;
	b=ljLE5c+Xc/uTiCXX1WCOpwtYQv5rKyAUjxpdzPkM4qV9aPWzCDF81++eREyptz0lN
	 ZiuYrx6QzBW4buq4XxGvDWI4MNeqURtBaMHMSYKxm9fvHb4oRGrOzH1/9VnuA8767q
	 5juSorWCs1z+YzklU/j2aDqs/vqyLGtDjw5YPzgne0PEfIwaTBYGTFMg/WrtGPr1RG
	 VyGuc6R38iLResprvqlay2tEev7ukwFdp+tX4wk8bUeXknzVbAyBmonksfmzrD31Pe
	 iFF+YJhzpvfTZKzwWp912IWO6JSXmkXAbu6cbWfVjBWJZEs2s2sRCZhXrrfQUL78nV
	 4XJiND69Jp1Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6308FC4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 23:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167088668739.13369.5018771829891924037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e748aabfc87f236e195b3464429770b656d8bab0ac9ca0e8385bd98d4bf80e2
Date: Mon, 12 Dec 2022 23:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670886687

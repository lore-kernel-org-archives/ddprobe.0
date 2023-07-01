Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81E613C1E
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 08:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5FF9C433C8
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 08:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688201648;
	bh=MhTlh1vg24NIsTVOtTDMDpuCJ43dMGEhIeU1fqC0KIU=;
	h=To:Subject:From:Date:From;
	b=tjOl6XIolSAFAnsGcopOjk4Gf05vV7pwJE0x3FY6DVIWu2p1t8WCTFVsI9z0boZ+g
	 3eOdyvZYl3v9kFHDJ7z9zTqWEBAmfhFwvTC5HkZ7CVvNi8LkeUT0F4LOzEC/ndZNSz
	 W145duP5N69eprWryxBDAq1f9/KfV7X1a/tnKoI5jkx/m1Voyw5J1ESerkMVft3eB7
	 B0NkS1JUz5NeX/TfoIwdih6Y7Vdmu+SI5qqokjoSGCg5A+PrA4awxBEadavY3tz35f
	 2nEQLsYdLpPRA0yrZ7ioHWXFUvbWlNbeSa7MfWI6bcTWcT18AFeVXVG68uYP4KIgig
	 nkTYqmiz3ADNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB2DBEB64DC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 08:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168820164872.4610.1206199913597847339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40363ef452f8201c05b5592d4906471846a70c61b49bd401374f9a043deec4b9
Date: Sat, 01 Jul 2023 08:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688201648

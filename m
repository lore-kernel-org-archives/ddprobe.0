Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B11B57C
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 13:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67DE9C433C1
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 13:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667310654;
	bh=eOl9F/rJIjm1lnpuu1As8r0MidZ+xwNTsgXjIq0J2jQ=;
	h=To:Subject:From:Date:From;
	b=pejsyEO6lkXmMMJuqYO+0y1xvpoZ4I9KThYnq7pDRNj8az584MXzz2yTDG25JTh2x
	 mbhsZfMS+8n6AOYq+5R1aWET+t6eQSHE6tYljNLW75Bl4BqGnCL2IfJWhHbE45Tk8Y
	 W89khPU0y79VHU9xti2PvhVX+lYl9aO6s/z1NskSL6lkx03TKm0LlKlmKISr+oOYOX
	 SREeVCKLkGNZo7pGBgvCP5eM0DC+0qLW/7i6StqDAYqmsPSkyqa6c9kdl/e0xLEAY5
	 Dd0T+GVgXALe2D6GmBb2QmP743+bi8D6Npi+45l2r8jQ88ruTgcLfCSTRD0otP/637
	 GHmH+VwhAPgyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F06FECAAA1
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 13:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166731065431.19771.17908551235187520138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75d6ebb7f5ff37950e2e248551ee2b9159bf58cf756c36f9db46242d9d4ed7da
Date: Tue, 01 Nov 2022 13:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667310654

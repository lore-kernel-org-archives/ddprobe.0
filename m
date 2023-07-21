Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5042E374
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 06:32:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB4C3C433CD
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 06:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689921128;
	bh=NWWeuPGyYe2U9ajCVWWSaG8jx0A4oLV9nQt4dkGe90s=;
	h=To:Subject:From:Date:From;
	b=GTGC/722H+KosbsoZfL/u3a/Z/DvwFW10RXyqFOu2+4oUR8piyfxbRwhDRwmNX9gC
	 AyceYaWc3ghANmSXCWbobbQEa0VXE9cuMRSAB9m7tL1lW+ZUL517tA7lK+c/6joOnT
	 NykDNjBoRvX2bnbmua5w3DxBH13jqX6oRd1qL9Hjwhsu266QHvuHzJEc8Y7J4+ydn3
	 0icJL5nJ5ZTIHSRFzxYyInfsmq/MBH4E6VEtsJQRDHphhjLjWCUQHep165jPPCwCZ5
	 BrBH6Wqs+RKfxfyNdvQ258PCU1bOlBQ71q381MtjUU15K7L7qz3sklKtpB5KDsEDjj
	 6VE0BHltnUBfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB982EB64DD
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 06:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168992112868.6097.15082007517335100679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecf4fa7fc2edaf35cbd400ed162410e1c5b3c2964f1e3e4e9e0a61ec20fcf136
Date: Fri, 21 Jul 2023 06:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689921128

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C7E7200A8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 17:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D15D9C433C0
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 17:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687456388;
	bh=eoT7hMGoLfCOvII/rUGH18P9LJJdKEufQifqb8D8jPY=;
	h=To:Subject:From:Date:From;
	b=XuMXZzLRKhrP/G0ymKEtS+TTeHOJNGMbDj7mfagdBdcq7nw9Zn9j4jKeYOIxrds+s
	 +KwzxeHoPVyPQkK577W7W+Qx/LUlaBt8VXLF+vZT5OtabeWnGsJ67XvDuq3KhiPR3L
	 vGIPQN0xaLV3u1SLoV1AsWvdRkod1q3PQE9gU1QU/HYnJwGBd9dbDVR4pKeA7qm4Md
	 A3uloG2ncDKD4cOqwJyvIRu/MQUZn1SW6qCJr1QehyQq67xQb09aKTTSfw7n+igjM6
	 bkykeQM0M04HylWsvNfpCweBi7adiyW5x6dvH3kJrmmBPSU+4miseLL4p8Tf9Rx+UU
	 b14J091ghNDqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6BE8EB64D8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 17:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168745638873.23051.9094328872594481161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 907da64294838dc9316329c3230d13186211d1e278470c4e3783cd24ecab396c
Date: Thu, 22 Jun 2023 17:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687456388

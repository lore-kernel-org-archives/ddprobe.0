Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3DA3A38
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 08:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B57FC43396
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 08:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672907487;
	bh=2NynehtsqhnRc47BjVPzb/h8anPe1equneP1c+H9hLY=;
	h=To:Subject:From:Date:From;
	b=auOQW3xRmLakE4AkSu8sZMAT0ndBB4QHnnZM5iE1y37FhfRWYp7rOb01VhJueMvZh
	 3oDCyWf/XlofuP17uzc68mx7Jvk9C5OAclGtk8ZfawJZil0G8GNcRuO8cmz+xzcnbU
	 RcKGnckyfJjd9AlnAtqnxArIWbpw1uOLsX6bvyt63Nh+FMyBK0Zry0PqkNqNPmzbDh
	 jJIoov7eMdGe0bG8y0LOLWUSJW0p5WojfjfMe9nwZa/6qFWjs7hnvts4/lUV20wVpH
	 e8sm0cPXRl5cGZt33y4uGKemjA0r0S08Y3609KJJmsv+l2ey2RiFFngfSsAJOpr4mI
	 Ksy2IlNyXm/Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61C14C3DA7D
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 08:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167290748739.11626.6643258246096996920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 539c268d3f11766adf89652a7f7ae23055527b353c5d8a1554d1722d2a7169c4
Date: Thu, 05 Jan 2023 08:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672907487

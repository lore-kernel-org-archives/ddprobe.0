Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 543BC8F4E
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 19:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 052B0C433D2
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 19:55:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680378906;
	bh=bZsldR5Dv04uOrAXj1vYa+6ym7eRMpLV9YSm9cajphQ=;
	h=To:Subject:From:Date:From;
	b=khHJ1YXrL+vYxOzYXEiaqA2VjHYTLB1iHmAe5Ttm3/xpOoD9crj3YzcwDW6cnHTAQ
	 j+ajJluUGfkeR18E8XfIp+H/9wxqJQUFH2SvpvPRFGeaETpT8c6+LNllV8pQYZR6DP
	 hyOMJ9PlhFuFAApzgLYwf7B7R1EHM2t9byzES9hqcNRyL/LlNNZgj/Mip85VRpxFDA
	 2G0kp2hqWM6TwQ6Y2BHDJMiPnz9g+Sd8XnQcP+Tg5ZARgtSkPSNGhPDORhGpzX76/V
	 URvkotzRjs7+x+/9A4+iwOUjaS2sA5LRW75ekAwH/UDZfghJV0HLidBmUzGUC/B62D
	 2adE0ICa6e5xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8C7DC6FD1D
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 19:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168037890586.26973.17526568720758971824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce6bf1a38ef1cc678e34e2a274c03e672e98c37faea69d926469e478fe34da3a
Date: Sat, 01 Apr 2023 19:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680378905

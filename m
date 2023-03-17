Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D79377
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 02:20:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB15DC433EF
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 02:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679019605;
	bh=sDUeu07XrcFg9l/lxFprY5lBMooEqgHPIEaBWkG+q/Y=;
	h=To:Subject:From:Date:From;
	b=a1bkW2Jb1JBmIzyBa6sVp1yB8iLSGYK8SokfYu6Gbwfh23dhKP7/l80+sAHFPYNMC
	 nl0ho8oTybRcOdZOhecb+o0BQCa14KBvJv0NYK3fkjVibzrYqZGqWXQEMNTC1ZhuTe
	 mPP+ZnfULMjVnVajc9l1ywtc3+P7uMsCIsIsW0/5xLRrO7inZV1WKMJR8dcQPQujyX
	 YOC+vaYtd/229NZN+SD1gqCqIvL7dJ/aHLI+lUm3SddIwqkhzVBA6AYfwqDPHJJ90G
	 UY+c/aBENwM7Zc3YMt4yqpw7X6GDCfPJ5fcB4kieWUcFZJNTwVC4V3XMuA0U13wwAg
	 I9mRyjE85BAIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEDDDC6FD1F
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 02:20:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167901960577.25872.11105611365671818887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e277fb9dabf375b69cc88868ffec3c3a3a77ba0bfc3494eef79e9207fbf44c48
Date: Fri, 17 Mar 2023 02:20:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679019605

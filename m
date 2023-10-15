Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 657AC1FA1
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 03:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lDgM2c/7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2584C433C7
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 03:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697340428;
	bh=aVqYZoRI9y8iSOwTYjhyid72hvSWv0Lt4cjkQPHrKh8=;
	h=To:Subject:From:Date:From;
	b=lDgM2c/7QoRk0DJ0Ip0kmSPKl82bXlp6NqicW2b6/5XFnN2HKTg07BDJiOJMD5H/Q
	 z3EKpmu8Nc4mRMjyYa+Bwk+YgdTdnE7PYMCYrYc6t0R2M5VrSQ1S3t1IMri9MRnWag
	 N6tM4WA7PtuE1nLzeJc8ktXYZEQjIJ/y9fh6ku8XTMYk5s+2Chh/L+E1IMRI8Bf5cE
	 Uqx7SYmvYR16nXCqQTlVM3Q5OVe1OBcl+ZF0wmvrsulqQd4NQispJGVFjfBhwQeIVs
	 YOoqhmZ37fxvo9vft8nkwWJg6QnHYz5ZyR/ORr2gOup54y/Dnw0cYTEE6OYun4Bv9E
	 ZaaIZIkkRpjlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEA8CDB465
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 03:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169734042867.31448.16893657553808157021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81c07c80b94bed3bc2aa8f27135640be35133c43c39541ced49785cb90ac732b
Date: Sun, 15 Oct 2023 03:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697340428

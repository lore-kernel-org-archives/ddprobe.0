Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E30E7B
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 07:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B78DEC433EF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 07:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672990287;
	bh=BWtsdnQAy38zOgPdDxvVXdWo2k8NH20hHrIn7hzN/B0=;
	h=To:Subject:From:Date:From;
	b=tj4JFdNEkvZbgz2srrrGdoDa1zwQkTsfVyIfapRYDz1rrCyqWa72BAeOyI6UKz1gY
	 CUHLiRj8SK+Ww5y8PTThXEMJRE1RCdIdqJ9xTnd9wVPOBxK/YJ7AI/tVztWiDFoZ8i
	 A9ppuRQY1dSY3L4iE0ae6ejyMm1TxJAu3EO6lTjzezOyUUSpdU0l22UPOv+b3yCDg6
	 AdLQsXo7evdLFktuuw1k0SK/w1os1kgjSZ16gOGm5DVW+SBoFZmeNEZl8vf17x4K5T
	 NxE/zdtY2Yggp8imxLrbbGDja7oSqDUL53TVbdDfZtH4V1am3t8YBfE9RBjU6xmLax
	 FjTcgTt5KDj/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98AA0C54E76
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 07:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167299028760.22063.2854225840707824660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87c018d3ea3141e8e903eae84c6fd4a70c0d6af269943c21b6c6ac1f529d88dc
Date: Fri, 06 Jan 2023 07:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672990287

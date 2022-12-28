Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDDBF6FAD
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 22:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BD0BC43398
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 22:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672264887;
	bh=/wrDc1fAoiWU+9fi7bpvJutlLs+mdX414e0m2hncA18=;
	h=To:Subject:From:Date:From;
	b=UQGbVPMAaMEdBwT6wVgKnhMbGVStbhi/RJzw870VnYoC6rQvizwmamwPaV7LKD2Cr
	 0VYfB2KNPyWI2X30jL/+cjTCmuOFaCoLqIyNRCIdLPn+rDxoSy6QqMKOXqKCZHxGmp
	 oc0S3pCzVabsx0O9FqYL2WJdsAxGaq3edjjWb1N3YKDOukjSJIe2l6N+ZMgq6nbtY/
	 c7Ah5qWoACCfWN9LIyxYgSQIaTX/ahHIkVuw7yahJCJIZ3cZ+c02nUxgGIq8K6yTff
	 stDwjahEV02sFok+NgjjpPr8j+Fbxl4jTzZHRFOu3cTUc2YjGGsYXSJbPonlc75nKi
	 7d0MeIVFTBruw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B871C4167B
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 22:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167226488743.3194.11628785104801836553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a15c41516765f596e6c77037e7a2726fa6e178bfa9ee3f77fe60571256df9009
Date: Wed, 28 Dec 2022 22:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672264887

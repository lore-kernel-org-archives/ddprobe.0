Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CED417C
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 13:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 760F5C433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 13:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670161854;
	bh=Yxopf7k6zLhYDfy9VQJPWYuF9dVKlCVfD4RHpCFL0eI=;
	h=To:Subject:From:Date:From;
	b=jTZgMXJo7TRHFvlxHcvlZqQe6HFDwZHfaIv3AM5trpbY9ovKEa59Ukm2eGlWLIHFT
	 wN9Gi3xS8upBxhmK7r1TJ0RwABYlPy1w6m4LrYn+bdMJllbvgLZXcBTqfwuhvtJrwk
	 azmS1OR9MOqu39e3gdkm176n0ExLT7Yz2fFuNMvMq2hYMpFhqxzNPY/aH8udDwGPb6
	 OoVmke4ZcQAPnzYa1+ugdDM9oASNLbIDVxV2vQuPfWZmgUH6coVXi50Hguxw5uoH9X
	 3Q4SOoACXZs1q2Il+BnxDa02xJSAhAylR/zp6RoP/AVBrEbEOYL5OiHlSLwF9Mz+94
	 8ZQgTRFpXqoow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 590BFC4332F
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 13:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167016185435.21595.14917299698726411179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79f129ea0f7b80be37fdf0c25080232b66001d36f4731a871e2a7021e64d8533
Date: Sun, 04 Dec 2022 13:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670161854

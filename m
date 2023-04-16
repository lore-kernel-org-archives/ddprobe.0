Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB714C60
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 18:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD497C4339B
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 18:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681670825;
	bh=qBt6Uu0bsIrG6TlNn/c3QwIRDFOvaQUgwZgs98Xy0q8=;
	h=To:Subject:From:Date:From;
	b=XKNdwHo8+d0XRjTWYsz4fYAU3vn+f6Jx4fsOGPNm4W0ZE0R/KtuRXOWf6n8o/bwc5
	 81/uYQc3I6LLoD5CaLD12L+OTd4ahoQe9TfeONzNjY6f+Rlfa/uVK904nPAX7QdFSD
	 xy53wcPR9VcklS6pEXBdGkHhgUtMQvQwujsxFvMVTc3hUQCrAqBdr1bM+cjTp7xtnt
	 sYZsyAhNSFRFhLDVoDA4VOdXuZ+ZMzmF6dTjU6CPUs1pelplCleAXWb+nUkWmYo834
	 Tn4eQA/QvifZdE09RL3X4WDAwdJXnbNw4ysUaoL4/PwWp1GKuwb/Son5I3SFHtaqhc
	 Wv7crQjT6ESRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3AF7C77B73
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 18:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168167082579.17025.2686521938700308833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ca36b46d5dcdf023f0d61531e080be5eb5a1e21560da4c19e722a5e8f720508
Date: Sun, 16 Apr 2023 18:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681670825

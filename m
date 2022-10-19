Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C04C153A3
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 19:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F8F9C433D6
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 19:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666206653;
	bh=zcZIukAO/PdwmMdEhSBhfQJxAR+oFwJQBvFeYHtWQhY=;
	h=To:Subject:From:Date:From;
	b=s5WqyMAcD9McKKHnXicMG4gOTN3S+SyyGF+amioc3v7Ca6r8jLp4Tddeyc2CO/KT7
	 RmDIThqspAy+ZokAk1LLZPUcVVpOjkawb13uFO9UL4q3ZUPvqDU+yJYoQPLUpuxSRr
	 QP3Fx7jYOnrltbHtyHGE+Bdn3Fa4Ju+CJKWm2Siy6XLQW7NZmQ7P4vLf8+VqdgiUgF
	 6AQxYMfVuTWMYUkcpXBRURf5log3A6GDwqvzlxObGIWHBscraxdA9Ru+b+us/ADF9c
	 iJCF/8yrV5yZkyCkjEv4LmrDqlFKmgiwrfiL9q9jHYg/Z3NUC3CvXPyvraOQNLo4jP
	 aBofbyWVFn3QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53777C4332F
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 19:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166620665333.28783.12498284922672916203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb8a8e94ad1e22c437643d9ab65b270b9a57461c08cbf2fa9661afd1ddd2cf59
Date: Wed, 19 Oct 2022 19:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666206653

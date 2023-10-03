Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D11B6AB4
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 07:36:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA92C433C7
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 07:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696318568;
	bh=nO4haL8XxnYLz+r1UkhWHQ8lV/C2L6JklobA3OqhPLY=;
	h=To:Subject:From:Date:From;
	b=dvC3QyWzCYpVq3kBm2C6YRX36UP4kj05Py57K9ScCR9XJ/j7I/hYkUQDmrdzQ563J
	 Pd+/VKbVSkUB5de1+/j7wlVj/TLl/ntQyxI+e14CXxt9BLKmrAY2zesl3cgy8rNPx4
	 pj6p8GaX+zstwVMEty5ekHEQLJkLt9YAL8fkAb/h/g2m2xSUALSODVw9QzQQ3lRV5K
	 eHAGJaiqnFPl9iaXupUpShtNtRQXTze2e4wxFWoYVeWjD+OK9OeKMfb8s4E2bhFZp4
	 EW4yxbs8xNgR2cqJyb4+bF+TDfmAbgE7SdgdHZcnLNk1UpctJDeosqvMHSdxOwxQc4
	 C71VGV6xMhsdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF570E7542D
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 07:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169631856871.26075.13549998572822268483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f20f574c8b2ec55e84f08e0fdc74878ddd91958e750f0d6a1084523c6c0fff77
Date: Tue, 03 Oct 2023 07:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696318568

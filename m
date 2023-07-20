Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8738B17FFF
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 12:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 05F18C433C8
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 12:22:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689855729;
	bh=OUmBHKex+R+h2EcYSZTI9/8Cu1KLl56LqCnZZp+gZRo=;
	h=To:Subject:From:Date:From;
	b=RQAwNTjS8IzU5S+u2lxPmTeDJNhOfiPWIWQdFiTiO6ACjRYUaEK7WWdv7xUqwMgNS
	 fVfwis+e0ZLOGW+8tuRGQ7oynod6ry9TnIXwA/nwG2B5sjIu2vJEPoxhKqEjLmQ7R3
	 b0boyGWcfNeqs28PqTknex3NKK7N0uik6COlT/FBPnN+fTPYBVUskgF3kbdvMC/8iZ
	 A/+C4wHYCXjnX3bVXycTYzTt8LlUZTVmTZUVwkDXxwjmoc9nGgUp5CKxc/j0Hvc2X6
	 87PFYs0+Aq2oTWCkcgDjkMmKIJoCi2yO3z2T0kpd9xoXO3pBteePZArMSBbhsv2Cf7
	 WNJ2ItQIIxDbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DABE3EB64DD
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 12:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168985572888.22028.12618483032815570815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7b66f2fff61c50e0aede134dc50916d2fa1a34fa839268c44db365ac0e55bf4
Date: Thu, 20 Jul 2023 12:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689855728

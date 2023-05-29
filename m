Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53BF36AB0
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 11:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBF85C433EF
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 11:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685360526;
	bh=jHW7+xDQZ+/Ji2d9UHxRttg2L7I3cjuBosFYWy+G/6A=;
	h=To:Subject:From:Date:From;
	b=X1e306nzChVysGoqaJVSv3n5Q6FQ7n5KH8cg6lcodIBJvKDjyqIDtFsgKgKOhzC8Q
	 aBESvVnWg1yJnoAlO6rhzVH1Vv9FBk21+QjSDk2xQu6/mxlf1UK89+E/+M9db2rBp3
	 0sRCcnfgrMG2kMYZ2aLkQYBsa7doz6bIAd+kZxv+TayuzVSVySCGPa8YYVm2/TcHFX
	 hdrqqWIF64O7PPCBEZ8BruafKXbYvYaP6HSw7R1YlkAYWrsvjY8g/vrrD6j1IrFqVO
	 9+sdO8ytYkztzyCyxZboaDXrzBx38YK/5vykiWane2g9UqhVkMAsQc+YdDJA4QeOsU
	 F2FCaW67H6WgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9298C7EE2E
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 11:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168536052577.21650.14609496391624255011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37faab80ce6297ef8b128fb89df6ac8394c0839e3f3b4a4fc8f29bb1d11c5e8d
Date: Mon, 29 May 2023 11:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685360525

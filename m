Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F139E8F6F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 20:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BD81C433F0
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 20:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670530887;
	bh=aeFybaHi6OWXGFpKm1hnN8OqWmEZlz1nbwpGM7NvsKA=;
	h=To:Subject:From:Date:From;
	b=goNxHUeo3wqlxwYSAZJEQNx9q+7jhZX8lNTfCnu0/2cWEErqaVdnwTqih1ru0BCAE
	 9tqva/97iGtbCZy5yKdwHZZVnFzjMDkfODqpiDHEqxoYZO9sVTWGpxEUh0nBjOw12/
	 hy2ihIoPbvy+fYqdEQdc9RHI1Hm/qUq8tKwR7ry5sFBPFDhuLF5I9xSky4sIBP5/C4
	 cNkKSxar6ZZo02/MDCnDMhc5f73tzpeUr9vGG9YLqAtjLox8cmiiQhhrYpvFlyE2n6
	 Uyr8sinFWyAM5uOp0TGHF2UdtLbdEbbeyNaE1D53oTwkZJ/bEuywZVXF1YB9Mo5F8W
	 d8Yb4WpA6Zu5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 698C1C001B2
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 20:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167053088742.8734.6515321290931004906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ad76b93c3cdf1f928c5baf0a721fd30ca4b57a79c5887fb05c7d63e60dfbb34
Date: Thu, 08 Dec 2022 20:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670530887

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5CF7E
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 15:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEA13C433EF
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 15:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681400825;
	bh=VHCUY4lnHE+alAT7uzRdppMeZKElAo8aJlNQZqoEFFg=;
	h=To:Subject:From:Date:From;
	b=rkxBq1/L+X9J4LjGmoCPaTTEh/3Ag6DCliny+R0701tmYa/4IfDtVZcl7xguof4NX
	 S+wVDWDGrS/M6f7ZsgiMEtDB0i7zQPHBnKJBbcw9eViTfDWTgdBOSpAbULC7EfklD8
	 Ik5sGu2iFWXJn91FppnliMehQJHbtMaokyDIU6QeNqMruqVuu+xzrmAhQfzbLwXn5r
	 DgktMcU8gRs17fpvX3IzldlRIe7WZkfMr2f9LW+h1ey+Ph3/oOK4QzBaY9KA+LgD6N
	 VxbfJS5SmXuKRRSUGPL0xjBhXQRiFKmwQLpxIXEI6xLIE9PyUAtyGpQMWUUo8iDUjD
	 37lSTm8Mnyeog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C26F7C77B6E
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 15:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168140082578.31811.16551654289494478584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 517989444b31642cafea36a8657132fd989e619d41b4c4ded30e89f2fc2ca962
Date: Thu, 13 Apr 2023 15:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681400825

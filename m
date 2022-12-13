Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBE277B
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 05:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88B34C433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 05:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670910087;
	bh=s5cmg2jRQ5EAg8TP5d84EZJEUBKEn+mk2eccRawJVuY=;
	h=To:Subject:From:Date:From;
	b=tuiy0yaenYP5YI+lFyTTABhde2squwxJ9O9LA+pAnLG7Bo47QFP8mK+10aUO3kxu5
	 O4Y8Q0pu/S9nfr1Ew65iff9a1ix8PnEhzBjsm815XAE+V3CHC/qw5/MMw6zqlYzpdY
	 liiR8ToqmCYl7uUwMSFKGthwSmd6S1v2srfO/xMDGSk9rb90XFvnX5NL2InYFPb57p
	 xat3LItIfEXtvdO5RHFwDRevklKNzqftXkLtQVzDqplMGLfZhBCKnOMcDTBggqGAAI
	 ua8FWHmezXrprec+K5xT82+idBcSXqfTI6D7Zp+X/J5AEi7XjUQUPAQw2U7TZD8Y1M
	 hik1yY19VACXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69479C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 05:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167091008739.23925.2563130107867217641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56e90b2318a03c96e58de8c218837c27a22152c99747587c2efdea36910d1031
Date: Tue, 13 Dec 2022 05:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670910087

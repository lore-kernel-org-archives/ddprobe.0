Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F1F729B2
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 18:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01C5CC4339B
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 18:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679164926;
	bh=gsueYF1Zpqme06+lKICTiR8QwLihRutysZRswHEbcpY=;
	h=To:Subject:From:Date:From;
	b=qHtx3ReZkRFyHdZ0Vc1wsMX3lRbizclqezJXDRstKqcUzFCReXsxAH8KLPLbxXVpJ
	 nZ6jbGS4/wOrIFUJEyzAkcd2GXtBmDYg4/cwqHGkeaCgmqSWc0L/PQW0rQ3EFc/5IP
	 +Wm9Ay6GJQzGdk+2LcEESyAU5em3hu/Kr0aDOa7KKnygo5dFpHEPjbwhuQGEWpP8GZ
	 J1c6XUyUnNnEjMYLP6UY6qEx1OXXI33GxNd94ulECeuZgIyI/jIsMib+oBX0HXhp6C
	 gm8FP6ZJ1kuNPArV8TAASHD4WZYqpwGikfMFudkF4+cRUEwmyx6ji6QgLjrUHH2stu
	 5Z867130DJ3xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D57EDC61DA4
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 18:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167916492584.32693.7467114735978411447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 314a45c18ad03663bb8e9f7abeddac29e812d482f690bc91187e71c0a26a72fd
Date: Sat, 18 Mar 2023 18:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679164925

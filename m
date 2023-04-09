Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58F061FDE
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 23:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0114AC433D2
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 23:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681082466;
	bh=rk+V1FHanEz967XKmavToebrJhuQyMuqs68ncQ9Xbns=;
	h=To:Subject:From:Date:From;
	b=oFtdzqe6OE3/mXWelyIekmcHHZ3X1rcNnfk4udNKiYKqW1cAcfjj++oON01YS1pBw
	 rQm1kKYgu5IufJf3O69+YXpCVTWAM12OgZ1WufcLGDyVQ70A5OofX3Jmg//4gF5AZF
	 A2PcwjxVkh+Abo29Qo1YPL/dATkZ1i2duf1Z8P6Ld6bY338uV8cbEXkz6ioyEdPhvK
	 r9pqZ4S+G23c18wblMJEzw1njWBpbSGAkfoRTo/8kRGep+mZUCeGgvlMczxKF0GnDS
	 MgMzRalKkjmn6QGPfx9gRjQPSbAU0/PukjVIuaKt2wzEDVxyCo1whjkGzrOCYoDv/v
	 0765FH3crN6SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C533BC77B61
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 23:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168108246575.3911.5211780762026330635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc853eb4d6dd9b93dc162ab1f7dceec5865c24a0ab419bc104a3268fb12bd551
Date: Sun, 09 Apr 2023 23:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681082465

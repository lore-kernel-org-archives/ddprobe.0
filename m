Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FDB21C26
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 05:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8B3EC433D2
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 05:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676267045;
	bh=vjLaUN/mae+GtxVgBwelGqqXuTEqHzR1Sr0jTS/VRZY=;
	h=To:Subject:From:Date:From;
	b=kcUIYK8G6QFcchaIRvfcYhIKG6H/hONEx7tungQ3eUHh7eqcicz7HJIRuEPnooawI
	 Dw4fxHZSh2DMQx01vN5gf49G1Y9S8i9rAshTplPVqQ2UlTjY4Lsy3jhWN0Apg6xbdk
	 Z42xHRBkvdJ53Hp9dWRsGc4EPNPMeqGV+PVUx+2RjpOkbIJNK937Zm2rlrN8wO8WGD
	 3MRpZDCE1y6BQOr4o2KBQWGWHtqXT2fy4JDkbYhIm/QF4ngz9pps/AEz9AYF07Vtuq
	 BJSu/Qmf9yoG7PgAZl+a4VqpDCOTBigARBUlMtWOSXfk4vDNlwlw8RAhWMDfpi+Mzb
	 YyoZ2e2G4Mz0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAAA4C636D4
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 05:44:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167626704575.11937.14049920375581661861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82bcfa22df7b589f653d801579335773395a0c895f0d78954d32041d1f2a11c3
Date: Mon, 13 Feb 2023 05:44:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676267045

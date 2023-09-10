Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A618469
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 19:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA284C433C7
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 19:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694375048;
	bh=htrvAzY+4PJJrWI19CizrHl8kfiMdR6qg8vpOiRL0p0=;
	h=To:Subject:From:Date:From;
	b=D81ATzUwKDDpBFLeWBZmggZ6aqrnlI9aSDkD6TGTpBsKLGM2dJt5+iLdfzu6AxPRW
	 4siKXNgwki2YdyLFJ1Zzr8JJohgsfHMpCUYJ2fjDAfN6cmOdwz++pQvyvrCnNqNcBo
	 fvP4mTje4F8AGY2H/JGtqjQwgUKR4yUWGKbU0Y8OUQ1iELEcmfRPT9lu7Y56HqOOoU
	 nIGFV+S5CKEK2tCSjVMVo5cYQx1RWShYFhPa02cDtToJHyP9mQ6wu57BdlQztbOm5J
	 2zaT5Xbo7xMf27aq6FaBKkawhfO3gdDz04ITA2Zi3m1BStOnZr8Sex9zMyAgujAI7q
	 O89F3S66vEFjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7771EE49A4
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 19:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169437504866.1777.12218116619949593024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a73876e7fc5964f3e5b06ce728113a59c25dbc670b7014de88867ccbc9e9e80
Date: Sun, 10 Sep 2023 19:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694375048

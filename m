Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8D29A56
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 09:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D2D8C433D6
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665913253;
	bh=KHVP0juN4RVuUMJ1gV/AvgSiYkgu9K7XTifTdiN6mFw=;
	h=To:Subject:From:Date:From;
	b=ZJxwR1b14DKXjFsa2o4KMq/pnz7bFp0WwZ1E1bdcPQ0zVjuEd30Z4qjTMX/GeWYPT
	 1HwxZcOLfKOyonokN7p+p0sea6TvGtw4MVDOIhj5MLzIPmpaHFsv8F7pUTGd/FD8Wz
	 1GZsxu+zvdIOaT62yDmXMVgI4opOyE6gnRY27kpGXROuiaHiesti8v59JTL6Q5NOLK
	 EHkw+bMCHPDIoKLw9O29zzQ4WlILS9Q4VgHQN+dD32Q5d8TAJ5lOfeNyloPbd3NNTZ
	 81yXnPhgvHqDBUEnt/lWyjykfRjZOaVLP7L0pOdW2kunhPd6M5VEMXyKFAYb9oaFwW
	 1CJyIBiNo4uwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AAE2C433FE
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 09:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166591325334.13751.16496861831245928910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7745efea2676b09ddc287d7c3e4a91e1b95dc1477d4cc43d9e99b92068c302b
Date: Sun, 16 Oct 2022 09:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665913253

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB4FF10EB
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 02:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87519C433EF
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 02:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672280487;
	bh=uZfoC7ii3U4ZxoahKi+gOFNJHoiBB0LsVG/PLHRcZmE=;
	h=To:Subject:From:Date:From;
	b=ffPNIoH5sy3QNzvmwEShAoYiWGsEDWaZXzcFPF2r5zGlDBdjlExD8tzCHJJE7xlOu
	 dlEP0W0tILSxR2M2GwVIo/6Sor5GsYKAqyTBMGzAgBAnLYKQQ84tvrNWGdsZTN5VWe
	 OmqOtWFgDVpoh7e7CIhqPNL6TBPyhKBuQk8e4ShQ5yA4R2ZG8tgOILkCz2Tgvz4ZDn
	 IFHIOETPD/O5bflvy6a9N+2TIBjlwvtIl/+vzpedgUqIM9gIiZchl2LXnxSrZHIL2d
	 MwdLQVzrYDVJknsKyPRsCJGgB7iEF9BcylhCRJJ5I5lglHz8uCXr4qqW3xVIUIcntM
	 xz8o4lRX9mgsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69E73C4332F
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 02:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167228048740.21748.5786979077531920462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb4389cee77227afd518d40a6396b36d5ab3dac0eabf063699fae387226777d7
Date: Thu, 29 Dec 2022 02:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672280487

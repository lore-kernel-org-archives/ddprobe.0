Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB73C194
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 01:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D5EEC433D6
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663203653;
	bh=PxW05SbPgVuC84F9TSBcBiXz7/R6fJASGia2c4wDpZc=;
	h=To:Subject:From:Date:From;
	b=KclIamLF4b16W3OChRTLkgz3l9w90M+3Pn+iFpn7RiIO32vHFFZ2EoZfoKhFthMd6
	 tw4zojK4H0vJZ5xoxo5W/6ZNYxGP/UkOqCYYqSJATizSS8AOGqePhRGjTh8TqdAM5O
	 v3WlE/UHPuoBnJpAOynRLYiIxyZUownR+bYSWXFPBrO4EeTVRNw7jy108w6YWTRIBL
	 0huWpmMHLAM/aZUtDkTvwKFJ508TAtB2N3Mi7NK2aUznSXAvJr5UcK2mI0D9Oqr0Nk
	 yZruMMJEBbphQiar8BmGpEqkkpaUzYXVB+l5MGgfBiuX4piwz4IblNOsq7FmyAULiC
	 gnW3uMbLcomTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5181DC6FA82
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 01:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166320365332.6886.14468583793913486650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 062c7017634d810d8cc46393c063f65a23c6ae8704ddcc53e95212d88543d800
Date: Thu, 15 Sep 2022 01:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663203653

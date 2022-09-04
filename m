Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD7FC1FDD
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 05:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7894FC433C1
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 05:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662267653;
	bh=EbWmUvxBZ9aOsVPz5c/GtahF3E4KcQOuDTstv2lboF4=;
	h=To:Subject:From:Date:From;
	b=lnN5nDe21Jl5u5TyeERm5SY4FIzt6q2W5gqB+9fYHdZY6zTpcpawFDRJfg10sNIXW
	 q4j3SqvX6HL5HHss+h5EhwsBWUThJ+E7El0Wk8aNuBaqey//zZGrVkbX3bqUpV3QHj
	 1L4mKhdo4t+RDmV/KygOQusGvcOhNKS5cuXt5nF3NCYtxiQwzZby3xXlZE/mH8Kp6Y
	 ZqfcWbwOcEIWkVfR527PpRiMS3lMDUgKpuBgIUnXRKZA8uAXRaxA7NiamxVDfPapQV
	 Oib+Wh+8UNYWnsQcF6TcwPanBOtc306RCAbNLcYTk2JOAqb9+TpWLy/R8Q9fbt4kZU
	 FJ9WtEH5sOpxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CDD9ECAAD3
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 05:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166226765333.21736.4598287206170111880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68ab8ed73ecf37550169053fb67b8344ae257182bac48ee2adb0e3dbad5ac95c
Date: Sun, 04 Sep 2022 05:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662267653

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECCF63C30
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 23:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84FE0C433D2
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 23:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672529487;
	bh=CvSaVMTh9keVwy76wPCMjOXYvTrODGtPM9SIKR8kVrE=;
	h=To:Subject:From:Date:From;
	b=rR0YItY27cm5076efnrOwYyqUY6hB4VdfRyT9bb3hTBrA446Ge6/1gA4GzCqmiNP7
	 S5aEZF5fkB3OzVmGSR+r58ehmnjI6SE8kfZAMeh3aGDVTYr/xuufxVnT3QnSiysFtl
	 HsVhCLcep1pXZ2fvZ6C2ovprNpVXE93SpqejGC7A7rD6xQufvnm0FWSv7jyCMtyKJe
	 /ojaPIc1sHxd6uaHnCroqnKj60Zf7oZbFtM6u/tvkaR3jdEl2e/quw/5KLFUxLf56P
	 fkoP8N8Ox0rtH48r9x+nXinZMqPmW93tPz8bVjWAgSnn6bRvELJsphGC91o/CH5zKf
	 68NNNgipL7nEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6029DC4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 23:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167252948737.30294.1472330067293580514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a5c1d93f4718225d19450bb5e427282980a2957faa0993dae269197d06d78c6
Date: Sat, 31 Dec 2022 23:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672529487

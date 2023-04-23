Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5082AEC5
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 12:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0DA9C433EF
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 12:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682251265;
	bh=vlVt2c7xkYVvg2jBaG0gj7x3VkG4k01UnDfW2ffTg3A=;
	h=To:Subject:From:Date:From;
	b=LSq7VLtO0cnJTIsnTOCVZqN6lQxkRCT5vfT9IPJAC48kQYy8kuzPhj34IzhyQccPA
	 Q5gOqhkZTTDnRfZB5x4AvbFh6fMgf15QMfXKLe9GTcKNqBtnNM7AD5dbp+KWTeOgyu
	 zGxjb+SVvnZG4IQ7dYB8sWoyAV0fxT7ZgwcVJq9uFdFDUKmXccmltOzIBVDtsLkxak
	 xulIq327VlcsvBHzv3usiXp2HlU6PxHzwgYYi/Wd5VvO/N423eliLQeCD/WJJYj6kH
	 UJ7bJ66KIO9eLGBGVducDrmzeIFWNWT5JhFmCq7lauaP4IXFLIB8LDxxSMLIxB6gh2
	 QnxwtvdlTZffg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0EB0C77B73
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 12:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168225126575.29392.8940300566410322824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1244e723dd570ade92d8e04e2973c92c8370969acd0fd7f99a5bc9d043c9c28a
Date: Sun, 23 Apr 2023 12:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682251265

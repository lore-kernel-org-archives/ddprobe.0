Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B499A18F
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 04:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 731F2C433D6
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 04:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665549053;
	bh=eojS5vMqfP03Rg8c5s90dTr3ZFfCDYUfcMCOPaYkqFY=;
	h=To:Subject:From:Date:From;
	b=eUlYTm9RJmCZVXIPoo4yL7PiQMW9JAEEM/Efup7vYAGLZTFxlkbsfTRLB7d0ZNVue
	 RLZMETLKMSYiE4K6EYYmT1cxmrmh8BLcqyj6xd6XJ5OxHiYkJO+EBvhKyz6wh/a7T7
	 EALZ/2bu6f0YfvFaKJpUDYIJ4V4Cba7JwVE7SjHItzcFYwbsPUbfBl4QN+ycymB5Ah
	 hXxvWNg0qPYe+fLuTeOQChJobddEAELG7N5nRZEJ4gjSLURQcJrfj70VwUzu5W6qoP
	 l51gFLJdZOdsDJS4gLzC8vDlwtJTsxa/tFQ75xCe2qbJpFl3ZQG0atHQ9nSJNXn4L7
	 Ta1ZeKhUTq7gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B135C433FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 04:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166554905334.22177.4012243146540356383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c800db8f06a2d58fc443a26bf704344aa2bac884f0e169d43397219f5328b38c
Date: Wed, 12 Oct 2022 04:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665549053

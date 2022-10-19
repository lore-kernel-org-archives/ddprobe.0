Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF33753BD
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 23:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 61046C433C1
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 23:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666220453;
	bh=8pqmRw9rGCbDOYFLT+dDef8mHYmbahNdh/1gign9KeU=;
	h=To:Subject:From:Date:From;
	b=tRpNvuzK6NzVa9qo1TWHdnLzLQq2ypjLziydZxlPdAezchhsSs0tWto3CVf0Mx6fV
	 tDtYU/1IZDIJEjpBSqOLy1FhX9w7ofkROYRvFINtpfmA37liifIf+jeEicGw6KR2TM
	 EWFH38CKvHu14XjyOHOX9AjMvkP8J0Y2eigRpVXgs81elsdJD5HnMykcEw+TCBZvko
	 p5UhdEb9YunsNPRV99ur2PskrfM4dc1s9I2Oxv0sF8Mq+3ElnTD9Csp/tiPjE44ZbJ
	 X4WIg7nwgl6CUzTLgPa7zdKgbenFJ6emhQXXU7KJfTc8122Y9EMyk2Mfdh74zBqowQ
	 +iYUPqsG12e4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51871C4332F
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 23:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166622045332.5118.6108552840958926558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f050d404f9e4435298a852a59631867962af94661da7ce153a24028ad1e341c
Date: Wed, 19 Oct 2022 23:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666220453

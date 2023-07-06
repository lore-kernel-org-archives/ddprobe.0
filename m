Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 616C913086
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 12:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E73E9C433C8
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 12:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688647028;
	bh=8MmWC8NATcF9gNAsv0lt+t9Eh+mExsz4txwZCKQCPkY=;
	h=To:Subject:From:Date:From;
	b=ekpmiKkJCgPuCmItZ8crYTNWd0h07VyxObLBQAsYGfgato2GwOufKQwHO/KxhpBsd
	 4kpu+Z1BkKnQIwGJdizvDOnDhCGyCb+X5LT3/bmA8enbvIjZ1M9OD+fi7Ff0QuUSS7
	 a/ECJVn8lSJURMx2ThdISW8oiTNFh5ALdAM5pb21y3GQpI4OyinN482nwjnAjqne0D
	 ZgeLLP1Mkod5qHjLzn/I8qFJpeNXJe8UzEjCI1cnDRznBEa4WlC06RlRD+xKvVHWq+
	 UMditNx9UHnVGTwkSrmmiUwUbDTT3I6SZLt2RxhXjlzVL3ZWIO6STTAdhpvgNXNBwM
	 onOhJbN3F3BWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2D16EB64D9
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 12:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168864702878.26091.10017193063918625160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec2e9b95968223032bed950d6ac50fc388ee3b2799e711d0ecb21cce2904e753
Date: Thu, 06 Jul 2023 12:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688647028

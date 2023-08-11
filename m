Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54250A35
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 06:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C294BC433C8
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 06:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691736188;
	bh=8GjUL3Xz527lBG+yPn2nWtx7icaYIFbTf0YHjdTeIfk=;
	h=To:Subject:From:Date:From;
	b=oMBGY3eCNqdIVRAq3YFFFi9SoO9pqZt2hCiTq/tH4ONpjHasqOH09NJyIuEJdkCAC
	 Ayrtx/z5c8z4k+7JqoavlAViWNocMY7YC5rknNnRD7DJbB6CR8f2I3GmUmgBRafCjG
	 bmlkyddYldcfXbJGDyzWYZoxsSuxeFYewRF1s3fD6HtQNZnBBbdAc5lgS/4/cFIGfb
	 eYJiYceq2BLb7QQCLYYfcjiBK4EscQMUJhd9tIGrjhJ8r0ORN9xLcF3PU54CTUF4C5
	 uFKlFPdae3f5udAy0VEWqRr1QbBa5jHGgA7RAn3S8bMDxeWFWy2rKFcIfG7AT3j3a6
	 EojgdBM8lcz0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8747C001B0
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 06:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169173618868.840.8051031037751683619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e6e311bab9e803f4275a6d23ca4f7f8d77fd1dbf7e0edf1f6448505283a66b6
Date: Fri, 11 Aug 2023 06:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691736188

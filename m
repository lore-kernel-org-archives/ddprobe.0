Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56799111A4
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 14:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C532DC433C8
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 14:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692195788;
	bh=hWULAICi9U7G5DY1Oadd6SqL+7MtifFiyHdFcCS5inI=;
	h=To:Subject:From:Date:From;
	b=oXuaFRZOXQ4WysHmNBOsotDUcLJaPaghLNdW6PsI6WhAZ99oSN6ZSAhSs9p1lufLJ
	 B8enRPsDlDWql2ri4raJxIUtGdwPhwWjfrWr0Fkevw7xNDVHKjKGNn4xKBcywz049F
	 vkYTPSAxW9/YFjADOcxIIRbAQ/wA419zd+rq4yNLKyD+W3hJWndX9jy9KgtQjJ19PZ
	 F1aiOeyJPOqsHur2sktW+QcqNIQmYIjHuZ5DvB0IO5boCRbFCUv79A6YWnJbiAX3fH
	 IrBIHLzgu3HnK8PnT9ipww7mBWi3xyNVzO5sTYmFQvSlp9V5/eGx4u9wMmUU7jX7OL
	 4nr0ddv4/HC0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6E9FC04E69
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 14:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169219578867.22740.829805879938977581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fa3f8d345dea300222037c4de47e78fbd1de8e02df7b8d5ddf3fea4902bdbdb
Date: Wed, 16 Aug 2023 14:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692195788

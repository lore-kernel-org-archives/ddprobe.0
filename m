Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4720D7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 07:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8E1FC433EF
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 07:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674546185;
	bh=+2O1IMkJN+TuubxDS7sUvx6uLdMcJ5X9jLWaVOnQrIw=;
	h=To:Subject:From:Date:From;
	b=XKaCn+6fpYf5ydI0uJpXStbPex6Soa0BDzKbz4JYP9+TEmsJTFHUORMkOlQICzNnJ
	 1H1lFJ5DNDhxHk3x7HYeL/I9Ibouw6meDq4riWOW3EUgkVgPAX7M9Ldc2LHCJLoY6+
	 MogL8qsyIm7vQHuyEfZTT7hVC9Erqm+dlzYDLLf7KsoiMqERzILRCGj/TIn35g5tUo
	 3ZbXpvDp4T9bVrpb+7wp3xPgQ99LVpxpQiKQH6gROS/y8R4FudwBCBMqAuiAtBeoeD
	 tcZaKv+NGQlKgaVjVHbtXjnBu8SXdAN/Gg9AT+u4WAIADmDE/jH2Xu7q237fapOyxB
	 tlsV1dsJfqB1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCF5FC25B4E
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 07:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167454618581.13843.1945197776684774464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 787d3c4e13b7a9425d9920e37a3585f60936ae6628bcd4261ac7a698fecdaed2
Date: Tue, 24 Jan 2023 07:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674546185

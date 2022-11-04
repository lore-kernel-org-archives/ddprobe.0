Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFC45AD25
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 19:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CB9FC433C1
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 19:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667590854;
	bh=rZvopdAyuWxRgv78BiN+H2yfVLczFl7zSLVOK+xGarg=;
	h=To:Subject:From:Date:From;
	b=n3m+0FVtVgHY7v0fJRT6PDXzwExVIXt9dVhX4wL84MxpPhxV5OTNGlVr7CEBMADKG
	 3tg1PtQj7AZgmo1WKxq2fC32jbgJUBAAKTHVW0wEOLfDGk8NOlAl39kYKGl3uT9BOb
	 i0Vgs9SCBXLQwT1VNeo1mZtfJmiDws2i4FP4OfO5QtVt0Etmt2srM3HbZdQ/BB6nAc
	 z8Sk7yYrQLayXwyLtb10qyxtIgWFnRUA10uzV8UbiG1/z8+FyoyBoKUnzyQZDevtFs
	 ZAZ+F5F7Of2ysUYlSevNFHoVSBKAD8zb+du63+mJPEbNY5P15CZbD2t30QUU9cvA//
	 4hf/BJf1BKNRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52AC6C433FE
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 19:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166759085433.3777.5223724371944891361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1124776c3f62fd882b7d9f97b6651689e0a78198bffc23970768c05115453d84
Date: Fri, 04 Nov 2022 19:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667590854

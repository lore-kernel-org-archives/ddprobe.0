Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D90F7FA
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 05:36:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VkWIJrA4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04570C43395
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 05:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696484169;
	bh=Y4pd5S6jEpSsv2ldOVpOt2JK5VQbB6b377Sjl+dA5bM=;
	h=To:Subject:From:Date:From;
	b=VkWIJrA4mXDL9ZjCQG0+yxozkKONFSSE7MC1qO5MBAIx+Wxi10k73REloDflifG9B
	 5ZjZYeLTF81O8l9jkjxi+OuCmsbAqw5Dou9KFJ4V3Nljx7u8dzab4BfF+SeD7zzY7X
	 +BaRELVNNEg0+9b9ycuGzzOh24olaXwD79SoG9Fe0r/lwJspbWNonWj9Kk3AMI54CC
	 MdTtyFr70tVoP8TQELV6nHYh2ksE14QUbzkYw7YLa6tv2g0MSmZyMArSEDt3KBh0se
	 ThukFgyErf+Y1EUPyQlQ8fvIwM79WPkAHfF/3a9/yH75FKX8Lv95O2eLV1C/EBKHIr
	 hK1LQt22R2I6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D15CBE936FD
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 05:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169648416876.8393.15460209800010437811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55a70c41d0648eaf506adf4080552133889e69087aa53215c5bf6245b991adc8
Date: Thu, 05 Oct 2023 05:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696484168

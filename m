Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C28CC374
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 05:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F823C433D7
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 05:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661837453;
	bh=OfXUWkLtepYrqmE+qgTMo36UQqJwA8TIBptZr8rh00Y=;
	h=To:Subject:From:Date:From;
	b=JMsex9JK/ePIR9rwlvT9nJBBFMBjUeXgN0/xloVDBciVml04oizQoktlAC0u1CGy1
	 O4vxz/Ycx54do+tqUfoA+yGG8ukrHjPBl77SeQ1DY9rkXoJ37T2SkQ3Zn13LtVq/Wv
	 pzLr2yAfUVdYq+r++eNa/IMc3XQ/uvkDvQ5BfrOraYsiXvXI9o/CWVuPyPssPHbAgx
	 TCqglnLiHSuvcUM5U8P07au9IXipm//XrAAoOPYUouf9nSbUIb/KvnpsQxKkIHkLW+
	 BV0TTD0EL2m9i/WP4cYJWxElk+H8saGZTMNVrONggIp0qv+fj3O+NVkbKR4XOSrS2s
	 ZijcarYkfpLpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 584FCECAAD5
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 05:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166183745335.25475.15071429329894434681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56bc40d3697368501568d494c6fb7957a153953db939a648afd82a244c89a285
Date: Tue, 30 Aug 2022 05:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661837453

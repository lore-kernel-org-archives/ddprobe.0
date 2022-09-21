Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2C537C
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 21:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DDA2C433C1
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 21:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663794053;
	bh=xxhvE1KBYqff+fecsMJIIJeqqAXj3ODZ4PHaWXs8Sts=;
	h=To:Subject:From:Date:From;
	b=PXATfF8Qr+At5VNxGO374HB7p34V285OHlBBv3/S5mvmAEollUJ330wslO37EzL+8
	 SGSlNj82h44I8KOQyoXbKWwlwmPL4qsCdJWuNu/yCpb7tOFwRv00Ly3FC3KAKMEomi
	 WXJb8QPQ5St9msm6d9jaNVEVsBT3E0memPPwrO12ZghzGXYTbKPZSCKh2+kbVMniNv
	 xahsMNTJLZC3OeU9WZScijdscbj8Fvs/KRHLTB0phZGHT/P4ko+Vi3TeWiJBd4N9Pw
	 RMMXlfELjL9CHl/jrb52BADj+0ByuAOfLxmXmzv5cLolZkGaO56hiV7izZufhB96f9
	 +xJ/bLOqRBHew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51C61C6FA8E
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 21:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166379405332.6023.16374782827852539197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6287dbfaf89939ed8d033fce3f23dd917c87f9179ae74e15031010a9563de14a
Date: Wed, 21 Sep 2022 21:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663794053

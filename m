Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08F4418E28
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 13:26:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0FC7C433C8
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 13:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696253168;
	bh=nL84TGO+m0QV8VN513QQnPR79tD8z+fmvRADftZWsPw=;
	h=To:Subject:From:Date:From;
	b=LOLZmPn8qZTnZ4TnLLV24lp9b1vXCxvI0odS0Y8IWNe5KADqxFP1vT4ND4GZ6J3BV
	 6QF20zAD/2C5+OZX1M1LJpFTiuAFRTw7LlclHnNHfLXcYfzKwDKUJl/JDALsgMqAbH
	 7FjilLmOlj6mStlWO+3jVGagS7UgcDpJMVR8kJXXt+eL2kDZgV9x1PweaMzFLtc1Jv
	 UL16qzAkH4rOkh5coQk37SQfeSNMBSsIn81kMtOPlGVlZS287xQI3M2wDAwOR0neFV
	 wLvbAbWKglzRQnlfVCINCPcpooOgw2I/A5IfPKRV3t5X25DeW1Ndur21dJc/juZPO7
	 VbB+rNmwJLkWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B567FE784AD
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 13:26:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169625316872.15714.4830764232839519628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3abdd323be3fc202da89e967c39b3721c7ced2ff8d0a27b53570a9be2592fbe8
Date: Mon, 02 Oct 2023 13:26:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696253168

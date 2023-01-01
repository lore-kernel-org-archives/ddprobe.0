Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A34015B5
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 17:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A834EC433EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 17:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672595487;
	bh=jpOZ0tL2vRErjKoyS2FXAvynARG+gLTRJ1OymUW2LnM=;
	h=To:Subject:From:Date:From;
	b=Bz/zhS0zblyfHFB91x+ddTCH3rFdus0U6K56hPqf41lV0W+QUYhlbpDWwjEAPIy/0
	 AOJ5epdhGlEUdTDfsy7JtSvhLf12GJk62oOEs3Mfm/n0sXL0fqR1w6YbcKj78N/cH3
	 u1nYJpa5bCOepKYIXVC0bhO+A7/z2Wr+LUfktY0FxcK1wt3gTz/+22wiwtRn9sGKPR
	 CV3XovkE9QNVEVYimp5jp6jLMezmSXeU6vZkoVC0R/CYhWLhGshzQNzJM7XF6LNA3X
	 l6CkxsTNCUx7KCU9hbBTCfyIyjzoBUWCoj2wvzqspQgRk8wOejhhf+XZR2GuaYoLqB
	 M16FTKY+cTLbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85A2EC4167B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 17:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167259548751.26520.7684682725481944321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6d3f523f74a1198c54d29ad8929d2156c8100b6e8a940a55f55f19c7e02a20c
Date: Sun, 01 Jan 2023 17:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672595487

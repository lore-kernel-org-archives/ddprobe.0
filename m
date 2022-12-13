Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7FE779EB
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 20:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88029C433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 20:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670964087;
	bh=1K04o0VPlCLOEf0yLF+fRZAUro0nVJK8TE40xLYmRo8=;
	h=To:Subject:From:Date:From;
	b=MNvTsMP0gekCdBDkVWXr+wv9sl2ZtWgqJOCwVExFkc93kFUyBZMHFX3148SbylZBp
	 smsR8GJGkIgt9577b1PNIMtSRHCcHAaHvY016R/q4qEBM9iseZ9l/mUGb+KujID5yn
	 HYQQUW3J9D3nEnX8MY+97QlXqA+p48jBxfY74r5AsRsiTFzh0zGpAgNW+eEOnhw+Go
	 5owC58JAZrsCeE3uKLnju2uFAfwW1b8R0wptr1ErCo4ojOaWCTwjKermEp25r/sTlT
	 TMACXL5aWTL2v2BwPqYKJx+mQFWjfFWqDp3OdqpnP3d7LKuMz1nTH7lMUCqpH+C2Gp
	 G0MaeZh07oPSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6420AC4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 20:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167096408740.14224.14814669153518358059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 828bf1d708b562046bb5a61307ca1589667369319438525a804f3551c66774e7
Date: Tue, 13 Dec 2022 20:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670964087

Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 752585CC2
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 14:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645367185;
	h=To:Subject:From:Message-Id:Date;
	bh=MpdnEvuT5EiOR/pS8KQkN5c6lyURhEciAN/HFlKZTQ4=;
	b=krKkDg+eVJbAef09wLEGmIO42zI1fbiDpMFfnKZwf70zl8ye6gFxk3htS++CdD+7
	OxHo1SEerUx5Wc3y5C3VG2RDxqA0ETbH4PDamRTKwxQ0EEmKQzjJZG2mHFH3fV2666f
	6CXeBbDGmxBwB5kckxUxI7BqR2W1i/joqOd684pE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645367185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MpdnEvuT5EiOR/pS8KQkN5c6lyURhEciAN/HFlKZTQ4=;
	b=OLQnyYp94MlmeiRfFoZFQ/vWj32IT/WOPK3X0aAIF2OcdfblT39dBMC19gEHBM6T
	IB2yiLEVlvfKuYOyIhLKDGaQ848tRIVrOPhymLqoz+T5O+B05YWq65yoQyS5tBUwRfq
	6SBvs3b/XAycpACwzL5DZEyyC/EVwGNi3RQBQPhY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1786cdef-bea0c8fe-bfa4-4865-ad41-789eec40cffc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec69be36c10aef7853ced3a8d87a30658e90b4bf03833985d08c40eeacbf4486
Date: Sun, 20 Feb 2022 14:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645367184

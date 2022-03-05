Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E09531B71
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 23:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646523385;
	h=To:Subject:From:Message-Id:Date;
	bh=f6NaZBhh+ERiAgFfZFHyAIR9IspUGf/42B4xrYTcnV4=;
	b=haxfv0vco2uafstIeYvE/7qJmBZOhiSqfqnbtR/20u4jH0hmjgGMaAK9aodm0cLM
	zKOaCTCQOuZl+/tYWmfSTdRZEmgAjWXZRB/CTmgOeJEvMU1obCSa806udfkaAhv9ayD
	nNvCYV1XMBcSlofmEkRC280oFcYEhpSZX2N2q/f0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646523385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=f6NaZBhh+ERiAgFfZFHyAIR9IspUGf/42B4xrYTcnV4=;
	b=HcTkCV50q+p94LiklxBU/9H+v2bnozjb/amKWNYPjBVFAoFBIMlziOl1yPEyaIpE
	G5Adi2f5ulCgV9zPnJCnVL/qL2in8kEHvly9necwYcme4oUJCNk11dB4yPbmvFVd6bP
	ryA2JcSoCjcFjAzWElV5r8MVUEIi9v8x1nvdcMYs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5c7103b0-8b9628f0-4de4-4667-8d93-16f810bb3668-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 73cb39acddab761ff1970d175421ce5585bb54afe2452b51a6389d9b5eeb3333
Date: Sat, 5 Mar 2022 23:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646523384

Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A795D36A
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 02:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647051385;
	h=To:Subject:From:Message-Id:Date;
	bh=k6DJQWqZmpzDHGd/uf/4xs6y8QlurvT4qM04Wq/aRKY=;
	b=Emm/yIrZ8le7O6IGc2Az+T+Rutfi/PYv+5wxbXy7MbuBb0ktXqzskYS0mLKQE1y0
	55SsHeJBwt9AHvYdRQxESzc31UMQnqfpR5JdzwPmTP4M8Gs9NeA0upYHJeFEUTwJbi6
	OtrDJTcFkNfp4cEWWMnlW43hOw7WcyY21kYbCAoE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647051385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=k6DJQWqZmpzDHGd/uf/4xs6y8QlurvT4qM04Wq/aRKY=;
	b=Py0cacalioVJQY2rCTEXiCrrRq86R5r2AID5uBFvpiKpDIyXW8vIhVzRt2tt74f7
	b+RVGnVDVXTf4OV2s39Kw2gcGFyk4yUw6xAO043NUBRH32Xe738vJYz8zp1gbsqDns1
	6tPi1l8zL76QNdZFhYXIZghpajUvYynvfXZknxPU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7be9a794-b394e119-3088-4438-a7cc-1a2e7359e557-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 63e804d350e6b377b1b038c07ac58099cf41212d9ade0c49b3906390d077f3a9
Date: Sat, 12 Mar 2022 02:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647051384

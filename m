Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17EF47B
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 09:33:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651052038;
	h=To:Subject:From:Message-Id:Date;
	bh=I7TefE5nIfzc7qcy9Ks54SnE+IhuHH1c0oUt69sQttA=;
	b=h0VVv1O3plhc+8pnQh0PD5nNneCrQN6IDCVctHW0gkTXAVq9GfV1LrQGcY80+lkS
	5mwoOVTHZv0yGGWtbJLnzRj5weFk89BOGvAO+kn+++mkBWHOnDTi91o2/hZOOtQJaMu
	dU8XxjNSBeebmvrisVlZAVDBqgsvTcFvtw2zilz8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651052038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I7TefE5nIfzc7qcy9Ks54SnE+IhuHH1c0oUt69sQttA=;
	b=JXvckl+aH9/34Cvb/BmDnk9ZeVO4cMuuj6mOwO+Xtk17BM+w4NtvrVWyXMkcVw6u
	dBMul7xmwdo84tyMDD1SNvcuSu6tRK7Ph0s1oreVP+6g6Lo5ZMQqpY7jKEJWwkr/Nh1
	TWS4rUpvpeM8D1RZxsnmG+vDyss22y4tEvOP6YTc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806a5ec8ca-de372946-aad7-4144-8cca-7f4c01b60f2c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6485f169f27bb1f13250032d5a8fcffa3ff3172e63b7373948f121eae5e1c22c
Date: Wed, 27 Apr 2022 09:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651052038

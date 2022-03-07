Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B36BE7C
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 19:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646679685;
	h=To:Subject:From:Message-Id:Date;
	bh=Lpea2Y/tGBax/9DHSc4dbMe8YpaI0JZsqFmSKskfIz8=;
	b=fGNrl2EMk1lex3pmkzI4IJDisRDH9/2I8LtBi9CaXrZye60+SILcnzRzpU1rHMET
	gcUcHS6Pc4r8z1jbarRV5EtKXQLU/eO2S5Xdhor3vwQV4eSeLEN76XQ/Sb37/Q5zaWI
	p9sxaLjTT0F4i7b5tb7uoQdgBMxH2Qi6eP5NoFcw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646679685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Lpea2Y/tGBax/9DHSc4dbMe8YpaI0JZsqFmSKskfIz8=;
	b=L4lrqg5z/QGYFV7GERWWgN/WJgX6WIaKxDbJklKJZLSzh23/KBBWrNjZE2bj01h4
	S5JHIBPWNWwJJAJ6xXLsvMH3vb8zMapZ+3JETaYDM3zY+lNVPU0b7ttrLVVZ7ZwIrV6
	JFHC+NP/Q4y0aQ9WOepUMKnuG+05QOxDx9TQWGys=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f65c1f708-6fa17756-58c8-4b0a-be5a-2a8f7d783d82-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7500f45e75022de634385dd5f1c38224aa7d1c09290663ba95784835c183d3a2
Date: Mon, 7 Mar 2022 19:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646679684

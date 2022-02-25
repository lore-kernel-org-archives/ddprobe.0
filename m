Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C50D7C
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 14:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645800984;
	h=To:Subject:From:Message-Id:Date;
	bh=5TKxE7xz+oRJYk4AA9A9t/Aax/j1JgjiP5XXcBvWAgY=;
	b=lOS58Xn2p5+JMxEkk3/wwTm0hiro86F9zGvrgDS60bLq/t3NmmYiFwGnPBOo0HC3
	op7CA/mNwj16HaKaq5WaHtVZQg5waA07N09VPG34tIjYH86TnwQ2mk/oOZ8D9pCIJvJ
	cW0ey4OlV7W/p8Hz5GU1viTklzX71W313zk4nL2c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645800984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5TKxE7xz+oRJYk4AA9A9t/Aax/j1JgjiP5XXcBvWAgY=;
	b=SLZ6quOzepI1CWZUEz4OSkHotrwrNVza6rNmn/mIrLk8e3AW9hzlpGoG+5JkmmxE
	kDu8atHO7n3tGNrcFAoPPkPIqL/IGHEq7ovOdWrsgfl4yqyzVthGeTFDFpartcwC3RQ
	bLbUJu7LJXPQjZHDqZO8lTurJL6FksbN/LqCYm3g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f316210c5-220206af-c997-4ae6-bf50-5868d93bccfb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55bfa7041defd59dcabcecf1c90578f34e90f5d280d17a3d57b99b2b393e1b20
Date: Fri, 25 Feb 2022 14:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645800984

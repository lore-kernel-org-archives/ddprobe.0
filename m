Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E36D34699
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 03:49:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650512998;
	h=To:Subject:From:Message-Id:Date;
	bh=vhyVBtVhZOwxIXr0ccjPHpNFSQ73nrSHQbjxWXZVN6g=;
	b=WrbOM3r4PPk4L70KUM6tf9epwezodU2vg0xjq6O39v+AabBwZ0EwlWydQ6CH+1aG
	Vw8Y1ouMJba03mQwqdJbU/q45TqZfd6/PNryNeFqoobhjHbVhzPtTCQxjPkhsvr4nZX
	vHqyK+s/mdmrmUGiWbJiHWC9/jn39bODjsuF4wwY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650512998;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vhyVBtVhZOwxIXr0ccjPHpNFSQ73nrSHQbjxWXZVN6g=;
	b=S6w3XfPT3irOz55TwGk/Lg98u263PvwLSnFQKx5LQ3B9vKHLiwiK0W4koITgNsDV
	Wab7J5M7qU5Jskudg2R+AxiSlzFWMZlJMdGPexAsKesHCadtSCB9guU4NWjTy3GRI2+
	xhYkSxCLhXseIrR4VnjPxSZvI/4hYYHksHP5UmzQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804a3daf4a-02a16522-36ff-461e-90b8-5c0687343a55-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 86eb7c6340a61cabeb9d49b2da546cbf2d0d4ec98c7a0cc0e1deefdaad8ad1b3
Date: Thu, 21 Apr 2022 03:49:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650512998

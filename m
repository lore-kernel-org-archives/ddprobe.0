Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99D067A
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 22:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645656085;
	h=To:Subject:From:Message-Id:Date;
	bh=UBqahMrrYydDXXhhzxlyKbe70VXkLyNl8c4nQYTqgzk=;
	b=fX/4S4FnkcaERnf5FckicSHhJAx8OkttkJU2Z8DOw6fQY09ZeKxJD0J2Yx56eert
	4pJJvzWl8Z+EzjP1v4hcGmskk4eNTxdpYGV07q0q7YBya/iZVYpg12JHJT7D9rH1Hiu
	ppjRK2PPQEfHCYyTg+3e1CIFgtMQ/oXZh97jkHTo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645656085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UBqahMrrYydDXXhhzxlyKbe70VXkLyNl8c4nQYTqgzk=;
	b=FmxkuqH8hSG8L+Mc2knUwlM9iD4+Xj4vLnE2YUllDqwadP/Volmwd4fiTLYH+8/y
	KZaJJL9sI9v3kHmUE4fy/KdDZ75CSyx/0xRf3JV4arwJyzuIxS9zT/NBD41/DvRjEYz
	BrJvTAkx0ETvam75hsxH4i87yZmYQ0vYjCt6aASU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f28bf1136-8da9cb4b-4876-4de1-9f5c-505c48933e2a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 68b0f1ffa7e8875dec8d13e5147b17c79ed60be087fc8b73b301f298427b05a3
Date: Wed, 23 Feb 2022 22:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645656084

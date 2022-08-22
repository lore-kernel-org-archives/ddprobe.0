Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 633FD4C6C
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 22:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661208052;
	h=To:Subject:From:Message-Id:Date;
	bh=qdGyWR2za6k944CANriYT4XhRFA9uVswMO+beEPhS7k=;
	b=DZENe140UEibUYAMCYr7jkplntAvzt1eY5lgEkf1mm22yO12Xb0qsHDYn+aWfAha
	TMZkQMsE4RX5jFPfeZXmZf5xU/RNHg3yj7lJbMJfvcddX51jiDKXWAKH2OV16y5EhuN
	cZJ8ZXOFMRYaqxH+6NcAL4P6f9CPKIH+u4nMQXxo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661208052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qdGyWR2za6k944CANriYT4XhRFA9uVswMO+beEPhS7k=;
	b=kpduHYX1QKYmJp07HKNigRoQtcTQQ0B+uFo5425fglQgCrqDRFZrNOnrYzLpQ0l3
	+vChiof7Pa9V9JPEWQip9L8dlK3c9zM7zfr4PtUGQJ18Hhe5b5NNI3uC0s1px440Cc4
	OcU6i3Qm+ZJDd0oJMMQvY3JCrLjvEVKbMtiTfjuU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c7b74364-018d44c5-4f5d-4f90-a2d2-16f9ce7c8171-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 17684a06f9bca67e615cd34b34acdcb495854db7d9771a80fe04af91d1f8bb85
Date: Mon, 22 Aug 2022 22:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661208052

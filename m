Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 391871FBC
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 06:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658298412;
	h=To:Subject:From:Message-Id:Date;
	bh=08fAY4TaSaJ5nsf4wrBb9ra6dF+lnyNe0Xj3NUacD2I=;
	b=avi1xpK9pdPDt6QjVSHrtTxZDqKt00/gcBXXBsQQocTrcUN7E5b3A9Mq8sJAbGum
	S61X/ZKsYubn0F49N1FiO5/sUUzzHbWE95xfkZ607Ss+2HqS0KbXPYV645CAuz1tpIK
	i+ZdJA0SQQIESCFGPkFyAz6ZQPtgeaMZpko2CJiI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658298412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=08fAY4TaSaJ5nsf4wrBb9ra6dF+lnyNe0Xj3NUacD2I=;
	b=Oq56HvULfY5kjpqoDf/uDmjtcjJixovp4LqNo68AbkoXDlSFwOV4rzOWz5ddVUR/
	NVAlM2kyGf8NrOI6zubhRg5x0nOXfmFC32FRtGJgzrzfgt8M8UyNhb1p1UQWaP6Ngpm
	xOwHe8rvK/ZjPAD/aQ3Be3wjOZM7VB2lejFgMZJA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821a49ad18-b5ba5663-70e5-4b39-b074-de38ba49c31a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2effac628f526a012ecd4a63cea5b6eedfe3b7bef90643411e636a2d720cf3b6
Date: Wed, 20 Jul 2022 06:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658298412

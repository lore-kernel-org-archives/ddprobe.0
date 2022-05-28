Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0CA4185D
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 06:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653719879;
	h=To:Subject:From:Message-Id:Date;
	bh=TBHOvYkdfMKxk1ttoRrDvppK93wROfifoGaItaqqa3w=;
	b=bwXeWZlugeu9Rw4oQ3JgKqL397LpWyviA9dZ2nk+e46ot8yWVP/5L6xvyQAVXwoh
	3GlnYzPgu7GIwmzG4DdGLk/PeUn8YiSO5qALX88j0vK0OJjJDp9z73Q0oWxnZEx+rhY
	G65iWU268LiG6DF9IXftE46b2pdBEM9r5zVula5c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653719879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TBHOvYkdfMKxk1ttoRrDvppK93wROfifoGaItaqqa3w=;
	b=ZpfJBpHCoEca0uPypKZpRCPjSdr9GaO1rygJd8wr5eXaNtn5BDSP8e98opckUk50
	TvFmiEPIo+kf9x6JQNAKZF/Fie3Sy94EDKhqBL6KU0jyjqI/CJA0D4Uhu1Z9846Xdv7
	MGJBiqcco7nD6Mq3i+BzvuGUkBtQvVZIz1MiGXpc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810962ce78-3a352005-35f6-41a7-8c1b-88342d2ddf3d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 53710d3315d5ddc6c83742969c15ec8cf229a9c832278d4ec874973a7a558f83
Date: Sat, 28 May 2022 06:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653719879

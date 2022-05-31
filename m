Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F4EA17C9
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 01:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653960779;
	h=To:Subject:From:Message-Id:Date;
	bh=8SSnt9MhEkW0ef/97VfAEb0jQvhwF/sXkr+HRaiyI6I=;
	b=kvsSIENGeijacwT4Q0+6njTAYU/JeuxIPi1iZApihPw7CJPyAShXMvDS4yxhXuVf
	Pt5IHZnVkkPe90lGcdOyJM3lcOIywaKJ9fXDO7aMAYwDQCX4lc3DEi7EBOrLayEuLSL
	8Jk+wo1xhICAa0meUoiq+sGcpC2B1qT4YshaR04Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653960779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8SSnt9MhEkW0ef/97VfAEb0jQvhwF/sXkr+HRaiyI6I=;
	b=F8j+Pcw88+wktqFgM2UojB8Eks2rRdtqwOx5WKR7nS1oyNYqk9xOt0ptQqieGMFx
	ODgs0PYbxyAs/j93Kdn+s7TPH8ZeUukmHU4YFVW1hR+ecFTDLnzTFHMOjb/T9e5DLR1
	PJOG/EaWTJ+pgBR6554xkYds5A9ypUgbleUuViyM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018117bea5ef-312fb136-ae3f-48a0-9b1b-997f6ebe5c37-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0eed199a6f849d16c5a17bbb8b4fe3fdeaabe5ec90db922567cb061948337dba
Date: Tue, 31 May 2022 01:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653960779

Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68FF4EA4
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 10:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655805959;
	h=To:Subject:From:Message-Id:Date;
	bh=2byWy/FRhCCsbbF42bN1gX4lQ6/Sv2UjRX5EeplJTZ0=;
	b=HLbBek6dqxRZhMCzbGjvC81oAksd/ae2a28FHy8mBcn4pdGhctzdGwZA7c+ykl7K
	fde2VFyZ7clbwm4ktEWXlWu18/rGDQggX8hiWUlesWv88jmMjW818ryO5N+xsoX9rRn
	S6CkNpG3MKiLq2E248dgExmZjeFKT3FzLeE1Dyyw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655805959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2byWy/FRhCCsbbF42bN1gX4lQ6/Sv2UjRX5EeplJTZ0=;
	b=DxpSizwjMsQhWAjBFlJK0rgZ1AJkR4JdOWIH+ageaJ4U6dAW3D8tmuHt2fMUwlaJ
	BrDvR+Dt/mXZ8rYCgKzjkwd1fNaq9/jQW1upNSrzC0nHwMQBALvqpIRr5XcDyJC8YU9
	3c8HhlAvujYkjIb85DZf9jBJJF55GIXWo0s+Q7gQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018185b9dc38-2f50a4fa-bd9b-44e7-9ac6-0310344b428e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 53d37eedd0c3040cd31449458387c94b9ec2a3fe8434a3e7a49e5c0c8eb1d8d8
Date: Tue, 21 Jun 2022 10:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655805959

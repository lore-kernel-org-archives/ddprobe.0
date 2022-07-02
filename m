Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11CB41C30
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 06:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656742612;
	h=To:Subject:From:Message-Id:Date;
	bh=N6wZkZPBZzNz2s5kL0g6yAlknlp8BAsvFlqPmiAqUCU=;
	b=YmxcRCX2XqDFTIMHpc1xpxD8hXyRT079esRJlE+0bLbIwXkJCe9tdEiLQN1LaDKA
	8+og0rMcGzwdgZ1p75DjwAI5FCr+fidb1bRh/0QxyxL8fCLlHgERCz3sw+goJdiqHjC
	SvCLl2+UjlVruRBK6UCY0xURGYSzRDZKRQkQBS/U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656742612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N6wZkZPBZzNz2s5kL0g6yAlknlp8BAsvFlqPmiAqUCU=;
	b=c9MgW4pGWjG8VVsRQxdaKDfOUhEZq6i7RgnYGkhrd81z9YlALcv5R9daSVixCkag
	5gHE5pwU0MksqK/Yl/wm1WIpLLtIDpQ0pyXxdVHF4cvl2jzAprC5N2OYCFD742/P6F9
	NpKn+LU7FLLxqmtHIcs6/Lz4Qx2JAMsnjFWZq15A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bd8e0d36-c8f6e8d5-e905-4828-9bab-55ec7206a25d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dabf9c078e331048ce1171609f593058dfd8139aeb8740daeaa6beddc8ff5bd0
Date: Sat, 2 Jul 2022 06:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656742612

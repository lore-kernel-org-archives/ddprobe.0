Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68A9338C9
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 06:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646636184;
	h=To:Subject:From:Message-Id:Date;
	bh=t1sfmoI7+q5T+BGrqjzAbaj7rK5Y6zPjK1e8hSgM6VQ=;
	b=hSxUAHSYJ81OsVwwE46wpVscOweCkiu0YYL83btao9/m+nB7yroFL0Co9wZRbMcN
	vXqrMdZV93aP47UneeJpfLCi0HCnwyCtV9UszRvMM6uB2J/oYMmc7hUf8crGtNtFaIn
	xhR2OxqZW8/WhtCXBkiPja9S4QhxsM0RKYfdNdI4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646636184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=t1sfmoI7+q5T+BGrqjzAbaj7rK5Y6zPjK1e8hSgM6VQ=;
	b=LZy1FJzM8BWmYGibEtXwmTsaohjT6W0Dp/wqFw4AT26hyx09ViCNeQwP2vWXTv9s
	60rViCqtgQasQJdJk0he+yDMQ5mT57dEvnYA8XkSou+mcBO2osamjfPO0UlNoEVsRXh
	tLLJQffGBSX6Gu7/id05MiqesdIzWtkwtZdTpiPI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f632a34cf-6ec67e36-d287-465a-80b4-6ebd7c8ddd33-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3ef62d132842bff04e043caa70dc15ecda9b82f75910cd147c9ef223f93139dd
Date: Mon, 7 Mar 2022 06:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646636184

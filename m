Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93D9B15AC
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 02:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647568884;
	h=To:Subject:From:Message-Id:Date;
	bh=Q6dIhpO5XPy74oHX91tjVsfonre8G8hdx0dPxz8EFOg=;
	b=CLdBQQsPoz6EOPM3ac2o6ZXvrPfrDZKc5+Qd3+HNT/yDHK+FfPw9jgzUXfNFMTq4
	Mx6imM0AN4gLWn7JL87VW5G3BYnBqRg2r3wVJy8SEDW4phAB3h4KpWH/AHhk0b5DAOi
	wGSCy9erm6IGPtjGsgr35wOWh9FitO9pqfksheN4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647568884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Q6dIhpO5XPy74oHX91tjVsfonre8G8hdx0dPxz8EFOg=;
	b=GanIhrgNPabCbqDmNJQj9MJy0UIz5R5hg07ub0vunJTuFJoIKNiWjgdFdS7pGab5
	lfyNpjITLeFHKYdIdFgoWyUzumxcZmyKLQyuOaZUi2NNAuT/hFwixiGu1ZxkUWC/WVr
	a2jzjfs5dPQMxToI9ktShOlUGdyZB4f77RDWtbWc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9ac21429-202b7eab-c13c-4587-9895-29b5a3e2a1f2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 69e7b86699e3261c1c843c16f0d4fd3272eab343f576d8eb25326b31d567ada6
Date: Fri, 18 Mar 2022 02:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647568884

Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 166F53C29
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 11:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660650652;
	h=To:Subject:From:Message-Id:Date;
	bh=7w7cQ6gfL/6KJdU5npzX8AnwPGFIuvdyBUE2EoMs9h0=;
	b=MXG5wGbFCWgnUiBbUBmgthQdVU/UpGWNrN8DhCh3j8N07yi7iEdgPEQPfKHk1KF4
	8EWNNAG0s9EZYYsPLgEWYjWTttDf9vbEEim+hmlaK8OuqBTh42LT2/EbmZ0U/pgd1Ws
	igwP8Hl85Bx7Z08sV61YWXFvVyKyJHsMyxvX0qZs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660650652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7w7cQ6gfL/6KJdU5npzX8AnwPGFIuvdyBUE2EoMs9h0=;
	b=AlR+tbY0eSMM/mmkxlr0SmBAMVfWDw/ki7N3f+GE1xidnL2gmJyfKSIHO7nPyFdg
	PYM8s0VDOgAjg7TnU0c+/1nC+uv46RKIP5nExnEjTUVyJgKhhrtKyLyG9I5yiC4H8Uj
	q3/ptw1Gd+u02IjUkvj19moadfLYQUQYsKMrF8LE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a67e036a-b39801f3-ff6c-4dba-a11a-704d4476bf2b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3eef61e80081e2feccd868bb57b2131d98c8dd4c9e04c339e6bb0b5be33f9402
Date: Tue, 16 Aug 2022 11:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660650652

Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CD802F29
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 09:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645953084;
	h=To:Subject:From:Message-Id:Date;
	bh=ru6YjJfkRs0adUTRwzzaF9iD0q70aSB8BGw5y1YFlJQ=;
	b=Iu43RX2J8sRxwS0k98rP9TTS+4cxzoT52YBmCQB3s6n3EysgYxMJH7RQY27Pq3Sj
	gaztwQNJPFrkIuOHacUtQu3FeSSBbQFF+V762ndOkAk2CMXfvAhIjQFpCiUJBY/Uu0o
	17zFqtNVCQUv3bQ66bACvW0idYkJNw4O9SGV+Ivk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645953084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ru6YjJfkRs0adUTRwzzaF9iD0q70aSB8BGw5y1YFlJQ=;
	b=SoU+1GWb1DXzi/bf0DfXi0Jyrev8KFfFnU7H/DpBZTp+YkP6qL7cY7mFt3KCv0mu
	e5DpUKbUhKD8Bg/jEQdXQxk/yqUVi9fBjFjQsF9LKyP/bZg8BxKjrD7icz4YQQ7SsPy
	QgAtFNkUY/FePVEGH+ZzTw/LMcxh16qgf0c4s2Iw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3a72ed5f-141fca0d-8560-47db-94ea-16a6c9318298-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 918bf2b0841eadb8b0a186a84472b5f6eaa740b113f8ee05aeab62bb621176af
Date: Sun, 27 Feb 2022 09:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645953084

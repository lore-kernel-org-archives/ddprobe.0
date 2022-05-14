Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2915236D
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 18:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652553419;
	h=To:Subject:From:Message-Id:Date;
	bh=5cAjccwaBF4Bb+6gyrGCYqaurChlxedqGp3s2JWQN+4=;
	b=B14YVdRLeF1pFg2FQJYAiuXMVwwD+dv1Uw46uxJBeq796K03xUIwEOdjUOZ438jZ
	l+N3RugSvE0b5TtUqF7xfYoo+bgi8lFGk6cXeh+B1SiyCSNnaDozC7PWq4hX1o8j1cU
	qPdw2iYhpQg8HgZxPYd3XRZ6rOBjQBHQ757rjEe8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652553419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5cAjccwaBF4Bb+6gyrGCYqaurChlxedqGp3s2JWQN+4=;
	b=LFKMLYT4XxBdHGJsVzQQuEI6ZGs5HobX6MpPSuhTJdhwOj5gx8dt7VLv8P29187y
	/dihq6Kc2XLX+75jk6c7Z9GZkKCDXY1khzcCpwnXxbV6aGDGZW4ofQgKmbwHrSncepx
	3/s4OJ3z8KGoRqVXJ13OgHhSQUDsAvKkO/BEoIwM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c3dc0a41-e45da14d-9938-49fa-bbcc-1cf6285a15cb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a4069bbb4b23e0d28d45591b020baf9c3956121ce4b2072362a70f88e2097114
Date: Sat, 14 May 2022 18:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652553419

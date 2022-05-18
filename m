Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02E871FCE
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 19:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652903939;
	h=To:Subject:From:Message-Id:Date;
	bh=PMcmiR+fVWzsjRury5YTc/l7DjzItksJsrY2D08aKvM=;
	b=FIQPFh9EDVskXpFhFOtHONqwzzKFVni6S0DErwmOoHCJUHJw9qwJ7RzOBSQcAL9L
	MF66LaHV42I0XRQtY7CqpHnM5ERMUSMFLYq65TZtZOCV6gsd4AXKveGjkiQK3dyk2UL
	rzjheOZKUvchR+vHSIyvhCBQb6j1PScU9M11cZ2g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652903939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PMcmiR+fVWzsjRury5YTc/l7DjzItksJsrY2D08aKvM=;
	b=VKB+0QphgMHJu1JcvNwYjnwyb9Y9W3MOD+ff/Vdfu7/goufoxm4vpgStp5fx/Ux6
	D3HZ1ylZj9Doi35ez7cl+rq3e9fB7FTJtXd8T2YfT0/dKQnkdw5JlnTMS8cJ+w+WtxL
	xcAAWVpl89u7Ss/es6JKY6zie17pw7Qa8cd8iXao=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d8c08ce9-f510ce2d-3810-4523-abbd-94eac1819d28-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: db95defb1328741a088e06104f8d73d89aff2f69bf4c1d13a9ec07f66c555694
Date: Wed, 18 May 2022 19:58:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652903939

Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A7F47E
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 04:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650862078;
	h=To:Subject:From:Message-Id:Date;
	bh=V+zHDRzFipgk3f1QB9Xi8/wXFgH/PzIQhK+v3wljfww=;
	b=AcZs8arqF6ocmXcqflLNI1Qwgwgw8J/Z0wPhjwZYQYEpreu+G4HvrafuwBBSmrzW
	22+kX3RMlPZw0q0atezknyU9HnkeOvJvUbBmqEpSph60RfjyDATAdIE0uxzHfDHEAxi
	NYY/NpJjb8A/Piy+Xx5cki1ooeqjYknzxleV+EKQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650862078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V+zHDRzFipgk3f1QB9Xi8/wXFgH/PzIQhK+v3wljfww=;
	b=Fvvx6ERoyNYoQ/aaLooGSG/pWyJDc7LXuw1HdCaQ7wzrcpQ2hvNoUkhEWtyLRx1K
	9CfW2svJ9iiw7pNYj27c4znud10BM4o42OMAVy4zd0udbPoBq2JR+JFyc0+1oRi4qYL
	RTkpTZjNBLEQHrLceQNxNefpcJGzSZrcvHHacico=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805f0c398b-69a98d01-01ec-4bfc-afb2-4cf0710f64fa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c4de10a10d42c778e335b5797f3bd9215ae3079efc574810986a14a333ada05e
Date: Mon, 25 Apr 2022 04:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650862078

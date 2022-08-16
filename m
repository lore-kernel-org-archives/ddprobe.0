Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B52A1C32
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 05:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660626652;
	h=To:Subject:From:Message-Id:Date;
	bh=mNHenfc4v3yCOI4ismmUt1mKyFAWLowDWAiq+rnvJPM=;
	b=gWU3R43N9lliF3Q8ujfbZsLwVePRSRECH6HaS7+YtmUYz80jCZ1Jp60qkPwGnioo
	qEFzDifbpQtKTgs4qS4pwJMawcNXLPGm11PgttPGMkaPkYpNOf4B+1bA+bO1cUjDHuB
	h4qfQhE9snVizKDzHj3hYtf1vCC5TBG6gO0EMaQY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660626652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mNHenfc4v3yCOI4ismmUt1mKyFAWLowDWAiq+rnvJPM=;
	b=h9+NlKHMWzEOGV/1A9+DSNjL8iGqHNzzDeV3/HzoQyPSJ9xYwshwAE0m29GLtDMw
	uXh2de4AdvELHcXpFLPKXZijEDeJSRkw/A86dwzHAMFFwegBcQhTACfcrp9+lkvgRkJ
	Giq74oiK1+BiqZTKjDhFyjOtoHNKDgNZgUbCy6bA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a50fcda0-6b01349a-c4c7-479d-8350-e8dd28d514d4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 80e08ed216617792ccc0206467c9d69f109b9d4299b4654bbd0eacb25e8353e8
Date: Tue, 16 Aug 2022 05:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660626652

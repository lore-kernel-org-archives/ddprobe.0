Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE8243D0
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 03:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655956139;
	h=To:Subject:From:Message-Id:Date;
	bh=jRdXJdTZfKErMSPA8h5FnV9Ahq4YQPbXz6Ll0r15NMc=;
	b=YGE3aPjxCJgA4+BOuao69QgZIqdOg+pJ9S9FwNvcO+6tCDBHp4a38iOwLIKzgTvA
	mNLKoR5GR2QTwalpczP4PNXudpisaUS+ihesw0fC3uZLyNXt0s8XofsGh3ZY1LerwgC
	bb6h5i7psPrPlCjcFHbecZ3gMeal9+i0fxLVa8U0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655956139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jRdXJdTZfKErMSPA8h5FnV9Ahq4YQPbXz6Ll0r15NMc=;
	b=GHeWGKJQuw7es6/UMWat0xaiUYnfH27H/2B8qxSIDZ5u48Fz7Z4ZsOuH1WNr0hNe
	5iTF3BBeeeX1QAbC12ZskdH1xcKclZILh0qTacpu3rd6sNw098IPAG9F+x7R4WDXgNb
	DuYTtjTb1V7KI9Gp4ZlmBGHaZOPqfEFetrvihpA8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818ead6d30-7374e8fa-dc08-4440-b996-2573a485d7d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 48cff9d0f3a4a9fc76965b5fa740196a17bc095850dde07222507f46ac855bd3
Date: Thu, 23 Jun 2022 03:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655956139

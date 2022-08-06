Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361501C2D
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659807052;
	h=To:Subject:From:Message-Id:Date;
	bh=c5IkFBslre9SPWmQR083ocEHD+0wsWrX1mNf+QNYJ4A=;
	b=J8XpR5mJwpKIBdlaIywi3U/BYT+mtv1nB8YqemavWpwWfVYXMgORkvQncmTMkAGJ
	lZmrTcly1o8yLI9Bg4NsrXAF6mr7o36oa8EV3eWmNpJBjqgtc45KCF8sSbHZ3N8+VVg
	zyIxHFF/Wpr5+TOIztCKgb59fVQuU8vlITFeFojE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659807052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c5IkFBslre9SPWmQR083ocEHD+0wsWrX1mNf+QNYJ4A=;
	b=aWGeAUSL8ZuHoZlISlQVDEEo3kOfcxZT7CCGPsNLhDFMFIyxXh2wAh+0KR+y/Fx5
	O6YI8BGm5mD91U10Nv9kaYKcqTeIQrljREMu9xju6p7Sg2YKI0rUqBnkJJGYwfYydk/
	cJvjP0YHZ7yHsWh+/uJINhcz8rfdMsDJEe/O8L/o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827435b30b-00411258-b810-4b46-b779-63b63be1fee0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 508be350ea89122c1798621408273e22cd57b71283095ba8f3f03d657f483f10
Date: Sat, 6 Aug 2022 17:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659807052

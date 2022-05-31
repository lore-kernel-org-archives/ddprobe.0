Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C5147E
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 00:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653955739;
	h=To:Subject:From:Message-Id:Date;
	bh=o5cBtrhbu+OyDYzpsxIJLAEUDnDIyUTYz2Xz/2C0IkQ=;
	b=VFrLuQOmlhyeRh+GjObFX4Uax9tUCxvHBZTZZXcGw9O8J5fhQjBb5Hwj2uAF6nK/
	Bk/Hc6lnTn6BBL2KbLcp41a5OUcJVWHCOW86UqEN/fu86OZxmsr7qKqRObCrRqeApeK
	467CE7l0fZUZuIGJf9LHO7lKXA79qoz/IGAkhVwg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653955739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o5cBtrhbu+OyDYzpsxIJLAEUDnDIyUTYz2Xz/2C0IkQ=;
	b=C+enC3NNjhqOwUpgsp47rvW7Fwq9XcZHCl1Pd6EqfmIWJ8952wnZrEnSNfHPSduW
	YCMaPflqhp7JGjVKHbsmU+BGvOOj3Wvk3xcWoz5G5jT+8tnisW91XxLB3R3AKPRmkJh
	CnQgaXao/8MaUn1k0Y1qFRmPpckxqHDre7VufzCc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811771beaf-e8e2b2e0-adf7-43f0-8e8a-e154c1cfb59c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 85d080e9db51c97dbf686df634170412602163b838ff44308c0ebd3f79ad5f0b
Date: Tue, 31 May 2022 00:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653955739

Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ACD91FA0
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 02:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652148839;
	h=To:Subject:From:Message-Id:Date;
	bh=PKoEMba9jaE+HnlSJMXlXpd4UhTtt5R2u2lo6k8X5Jk=;
	b=GTUfJOwNMivZ0wiqQppBziByotFa5j5M+WeMZPvFb4ZzbK35YFJPAN40bXiF3KAe
	WPWtlFNPb5969GcZ+gjCf3c6hdJyYfNY8BRzXLa5ykIYvBgSw0el1h4Ffycw/kV8TJW
	8yL8WW+HXEdhPSKV5GWAQgQAm3hxOrojKrrr2tY8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652148839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PKoEMba9jaE+HnlSJMXlXpd4UhTtt5R2u2lo6k8X5Jk=;
	b=XVKcwmqawq4cSAc6e1OhqbKB7RjNoqkP5oGeKIav/s49QFviz1KSKi8aV4eUusXG
	YdBHaul0Eb4+VDLTcgWU8VvGJH2riZpA2apPSh3U3mc68hY8YKz7EFRM4cFRfD4zGTU
	VdjTxs5y0rE48RfGagLFphv35gockNjjA0KFLovE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180abbea37a-c42fa09b-b852-476f-98bb-da13e37fed14-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 77925de00d38c641da284f2de69b08b4e581c74384821386ddaf531b4d84c93c
Date: Tue, 10 May 2022 02:13:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652148839

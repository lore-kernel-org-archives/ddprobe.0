Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE965365
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660285253;
	h=To:Subject:From:Message-Id:Date;
	bh=sBJYXJs5bJrGVDgLWujBwoPdeqUWCacvLLyYPacqD8o=;
	b=GLv61rQiyB60XLOvknSYLKpokFO9AocmCJo87KfATx1hJgDK1cB8KmQTT2nED61h
	Hcxg87qKX9XvDd3ddq0Vo4du7NcCZQPJKvI+DJXubtHP94h7EnZoPEZZbFNpwm200yk
	ixp8OVzCAI+GuRuSshDyZ9bpooVEb3kk3166PeQA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660285253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sBJYXJs5bJrGVDgLWujBwoPdeqUWCacvLLyYPacqD8o=;
	b=KiOyfCzctcyCK+xiW/8oQSDmb2eGB63cydjG4ShLeiWdgnEjeMsQpJ2bPIEUYQ3K
	IC0VqcIq1iGgfZR7AdlncdIU+S+PKbcQVfEvcJbQF90pTo8MXenZ0uFkKKVNfxxE+CZ
	UEqMNZeaMoorwEkbAgvLjXXvl5LR2odv9QInRJTY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018290b673d1-0ada4302-7e22-4238-a596-6930bb34b3ab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bd231bad7762af1430beacff8e65a8a857c17da7a689cc79b99eb1b447321654
Date: Fri, 12 Aug 2022 06:20:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660285252

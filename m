Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 654A77F6
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 13:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659618052;
	h=To:Subject:From:Message-Id:Date;
	bh=0Wc/Z677G58M3Pp/mf3snMA/xe4OPniuL5TZJAfxvsM=;
	b=HMlr0uHg01j+NHALQQ0ylyJltXqClhVKzcIXO4z1B9w4x8aJhVPgiIZh++dfYno9
	EFyPKcgjakKkXUyCaZthJv5JBgkdHffxPclwzNpMimX/sw6BoOzzMANJVjo/7zJ1t1O
	JyZ0I+T2nmzdfUOdyTrrO7WATfiSdlVQMlh2LXVI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659618052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0Wc/Z677G58M3Pp/mf3snMA/xe4OPniuL5TZJAfxvsM=;
	b=OoEWDto+abz7pyH/E2+p7yUJXhytmqogvAjFQYOeFpJtZr6DiQ7DyHUZzrXIEzoI
	lXqnIR6fcB1s/HVO5zT4U0ujugc8Uf4ueLxmQKLbofFLUgrBWOGNJYP1jpOTsOtWTPN
	1Ud5MVIqcdIThRMBJpjYSzmLiJRc2DSbN1KFBAHc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018268f1c9c9-06891d5e-58db-455f-9cb1-dd61c798846d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 29ea28339d4829a1807744b7651d1133f84b61333692458a215a3a5f8d5ebcbe
Date: Thu, 4 Aug 2022 13:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659618052

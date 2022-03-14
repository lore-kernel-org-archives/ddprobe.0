Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 010B61855
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 12:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647260485;
	h=To:Subject:From:Message-Id:Date;
	bh=ngrASEB7QEwX2dmOGTvogeeeJEOKrx+NmeFfqEspSMY=;
	b=EOyxkQXcb0Iui+3BGhtOACGBaubuiT0Qgh1GSEVXPMdWcuYkw313Fv4IVviBWBvN
	HvzTnLr9Jdt3u5EOwPDIJpuQSXSS39183VNPnCAG/L8Wk2JMY+uYGYM5xne752llimu
	IXmI3thMZ/iSZ8abCBnTkwm9ReTqjIjSLVNqQw9Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647260485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ngrASEB7QEwX2dmOGTvogeeeJEOKrx+NmeFfqEspSMY=;
	b=OsVUwEAtwQeiWBUIzyVgmOXQoRmESpIgmigEz6LcTWlyUP9BV7MY+VsOSNAgY4FY
	p+5MeAu+IFadt7wIClgpU7xKDz3syvnPTeQfLWvH8+d2Ya12T45/5vtU/ajbuXPxTC5
	Ncg8d8NHDNiwmKjduFGnp/mOAEyuziuSPNbdMbp4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f886046c3-8263e53b-2ea7-4648-91c6-f3f73173292d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ed10779e5698ff3afe657242f6b92e8331e027584699b08ed5882d2505e3c1e6
Date: Mon, 14 Mar 2022 12:21:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647260484

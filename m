Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0653415DE
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 08:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656922612;
	h=To:Subject:From:Message-Id:Date;
	bh=tZVEAfV0nhkJXFm8PptEQyJTBzo2pQuvRx+baGWI/Gc=;
	b=Uj7UmZg1WjtZKN3m89K5gpc8SjJfAUX7t/8vM8rseZDDCGraKeB9pyCIvXfJ3xK3
	PYnKrRKoiUWmCzqi93Qpmn3TajW4+adZnL3srQRiIkzlYlOowrQqzuZsm+1gW138Vug
	+DqYsBQpOF3V6PPzffgDBl4B2EvL593vMOyzxD38=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656922612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tZVEAfV0nhkJXFm8PptEQyJTBzo2pQuvRx+baGWI/Gc=;
	b=h4vVNPXbGWPfiaayalTBdMIk3/S6o/cB9zpjLpvxO+bPvfFgs5A3Wpo/sBiZVdhg
	Xx2/541hi93y//h6ZnChzRHog/P9nJ3vZRCjoWivkVJk/M+oNgFe+5mX0eTn18foDq7
	2SEdwk+D/neTSHqlYqrmQ7HrSZXYGj1yVzU2nVDQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c848a24a-ee616b22-d9eb-4d12-9630-ae4addbb0b15-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e6a294eed97549ad5bd30be063d894978cd532fd072696ac563ff1662999088
Date: Mon, 4 Jul 2022 08:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656922612

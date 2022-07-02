Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA3E580C
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 02:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656728212;
	h=To:Subject:From:Message-Id:Date;
	bh=1Ia2ci6CQxTAg0C7zfHmvQ5oDa64SJyDoY2vljD4OBo=;
	b=dcUNTHruvvqXh1e+kGoOpxT2pS/n70eytW+kz7802tfwSuhRrOENJrWZcCdS7UEw
	bR7aWeul+tS0IN8zMJSt1jOdMLYz6kU2wVUudRrsc1tEDQTzhsZHTtPzXhkgU1Jijav
	QER8gZM+SLCpew2rKdW+QB+3qh0RdbZRyOLbG0Lg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656728212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1Ia2ci6CQxTAg0C7zfHmvQ5oDa64SJyDoY2vljD4OBo=;
	b=KNx4KF0Gi70TXrbQZehFyxHLB2MRNijyPnBLoB1m7KUc4wvatSS1TxlPBxOKhnzB
	qIp8XyQashdmBnOQjbJVa8LbeUU3YsAYbIC5/8R9USwC2knCHaDKcIxiMbLopERbLGg
	8iyBA3tCtCGkrEYJLtvhDn7D91sodn+/uorM3e8o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bcb25362-a687cab4-2d27-4b1a-94e4-7428a07af0f1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1045c59344d3102bac0e3df7e9a594d07fdcb69b7176714e2a270307b1ddf456
Date: Sat, 2 Jul 2022 02:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656728212

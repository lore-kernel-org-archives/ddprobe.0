Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E45F9210B
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 09:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654765439;
	h=To:Subject:From:Message-Id:Date;
	bh=k1ojjF1JwIrsfa8dkahWdRYBOJzY3y3pmuwUG7lEpug=;
	b=ETO3VXXXics0X3oqLOUxLFQ23iK7jHodEvsSLG41ecsWtZ8DVC5Ybhjo3HI7v2fL
	P7UmVrMlcTJFcW+fYloBxrWUt2XRr44Saio2NsGq0RDG2AOk4jgixFkO/6pwgBTT8Ux
	35agUe3CkoCeaBlDgmEbRdhGKg6jiMOMZnUxoC8I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654765439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=k1ojjF1JwIrsfa8dkahWdRYBOJzY3y3pmuwUG7lEpug=;
	b=aMDwQeOpt0a0cGFb+KZ+D75PJ/A+lsnynbOd738DetyCVLd1HlbQiSa//TEUFSje
	EU1OvnLkVJSHreb/K61rsOmNRujELgzZv0SFm2KBl8dM/7OKWwyuXMXtoYFydgN0XYd
	5o8DeFkMRbBka9S1F0HvOq9vO2smfF1H6uQ9pZQA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018147b4c8ff-e7623eb2-25f9-4e50-b708-34a040f23a1d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c8c70e87d4eed19319bcc29af416717b9b63405dcf29a32300755b9c3c2dea98
Date: Thu, 9 Jun 2022 09:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654765439

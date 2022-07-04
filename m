Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 169817E
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 10:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656931612;
	h=To:Subject:From:Message-Id:Date;
	bh=Rtgpg55H2FTCu7U/N25ObeucvepuvKY2Zrh/eniI5LM=;
	b=CwJEWWZxhEsmKI2sSlFD0MKbQ/AlEozqiTum9iAoMEAPRwi6q7SwvEPv3+EXay3B
	8h34ytsnCJZUbIxpH61GxXd1hcPd3aZqdjCkP/hiS5/IDomCf1lYexKUEoSigiWhoem
	b3Vej9hZS5IRvUtCiGxGIdoGiwL2i4hE642f3Ymc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656931612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Rtgpg55H2FTCu7U/N25ObeucvepuvKY2Zrh/eniI5LM=;
	b=Tv1jPqn1zqg5+vGsmRrZVu/BygGnUAsd5l39oY+S7ur3eZL0uD0Q8+NHP0PQ33nG
	KVUYZen8IHxjpmN6YOISKE7F6HYYI0Kih5a1l7Cnm30gcuhOLc10yCaiib7wfz8+OVc
	S92YFv6HKThr6/+HKSARd6BJQZuJer14AaBzKOKg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c8d1f675-36275c21-956c-4758-840c-948973365494-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 353b8a9bb9252e43850bd95d3354e4112fa03d52ca9874c2e396e0151ae70909
Date: Mon, 4 Jul 2022 10:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656931612

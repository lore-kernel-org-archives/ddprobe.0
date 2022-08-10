Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 555DD17C1
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 04:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660104652;
	h=To:Subject:From:Message-Id:Date;
	bh=py8+WqobGATO2tLpqihes5CB88kcrmPh48nowKdevJU=;
	b=kZJPfjZ1aneCds7cqA4vr6xqAC7cUSeeUP47rqe3Do2C91KiaFnBQ+q9j3jm2KqA
	E7OXhm+IWCDMQNF262oVJnwLOJ3YTx0lsR5AS4Y5MCQwELLQiSyZTdGiEixAqspZ4Wl
	gied3Gpunpv0r1xm19c2twVyBAh3DTPy1RVdcJ2k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660104652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=py8+WqobGATO2tLpqihes5CB88kcrmPh48nowKdevJU=;
	b=gTEY9eO5WybV+RhWRU+B9HoTwUz2Ars2BEdnNNUaB94i65G/CpjWFNLuTGW3NSie
	aBWG1y/TgtmcORCd8VEcA+uGFtKgx+3g/oTQ1YXpXCxAm/EeFd+lgtaxlIZZjKxqIlv
	8aGUkOQ6QtfAKpql809HoQNDH4xt/8LOuj1RBaVE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018285f2b721-24742d07-24e0-4cf3-aff0-7ca32a837476-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0427a1008a7b03a93c58f2ff9016301cd9248b1639a845980ad1c2b179ab5eac
Date: Wed, 10 Aug 2022 04:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660104652

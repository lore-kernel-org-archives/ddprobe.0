Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 070D47E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 12:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658578012;
	h=To:Subject:From:Message-Id:Date;
	bh=AHQ8PAPM8UN8ghhXl+CRHIR7vC1zHpkQt4n+RRjxBpY=;
	b=j1TacRG/bOG0i2KQ09QuD5mXUMns/vRCOOlD/e3GfmiInWI8kKv7Rqhdtu4G/Z1u
	heiPBk0a9c+hIEfHlylUnucdhGMrJPz37Yuk597QGZmzVz5j+tN1mDMI02l7H2syujX
	C8d2X7MK8QtiG8iHzsUqjFKuZZOcwLugNZB5ck9w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658578012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AHQ8PAPM8UN8ghhXl+CRHIR7vC1zHpkQt4n+RRjxBpY=;
	b=EBzHmYt75QmeRU8tGEsHLjpgsuVUeqQk3nrQPAyYuQuJrqwy0nBpQ4tGrFKhgBFB
	OAYtSj0OIefMZf32xjGi0HkI4MDJvpfXwsxTLuNNs8qehJEIYv3iNpebfKW6FML/WwJ
	oGeHQLt1Y2xqIaStbcLxc2bfhG0bTbb4UyeXtYRM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822af4087c-2603fe99-8c9b-498d-a3ab-ce158aca3670-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 752e9cddf38d540534d2d575acae2bdafcf94a172b3c2b137649ae8f077abac7
Date: Sat, 23 Jul 2022 12:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658578012

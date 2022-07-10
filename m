Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 075297A
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 20:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657484812;
	h=To:Subject:From:Message-Id:Date;
	bh=4vfzxMqcbojFEf9aXa29qrFy52ojVCLZUz8vHVspXO4=;
	b=DiqWXwcx/IImlIXzHAAdheINxP6KFzWniHP6YYWIW268EE/KqVoWW9kYD1Syu0oc
	6NrDcN7P5761qEkXvsmevC7OIw9Bl4q11mHtqEUOoD79ob2pz3YxmpIw/BXeE/zaqYt
	MvrTQX2qKFKDeb6q0E6tXLO+37hBGTIzDXsQ6cZI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657484812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4vfzxMqcbojFEf9aXa29qrFy52ojVCLZUz8vHVspXO4=;
	b=gArxh0IIk08knTJr70rcAMdblnMloar65KNefTu1/SP5Vg7NMrPmM8vv8jxbG0Ef
	l/0xi3k1t32foF6RYR3VAnTbG7WHYUh13hq6seWOPv75dD1+jHxHXm01hIP6wqJVKCo
	ot72sw+e8RW1amJu5IEICQ/PWZY6RTyjRrWBW+FE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e9cb2008-0280e9b7-94a8-4281-86d3-e826bfebd721-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4d615664d261853a86ec4e23727030c6d6e28772d2c866007253cb861a96bdb5
Date: Sun, 10 Jul 2022 20:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657484812

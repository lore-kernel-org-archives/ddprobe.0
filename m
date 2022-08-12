Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 600DF36C
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660268452;
	h=To:Subject:From:Message-Id:Date;
	bh=MSb4Xmg4YQqZwPw1XCm2jzqCF2EJWVFFbbieqGqowuo=;
	b=Z4PKbjo6ssxIJVN1HFnxy4lyKY8/Ms8WxKYUE8TlaHn7C3bRlAHlRBnllOmq+j1o
	GioDWC6uI+ORhOpUCov0mbgU7f15T4wNXGjPLmPruU0vy+T6kF6mv9UM8w76aU7AGq0
	FY7cnQsy6PH6jVUNEbxahUWZTPkYA+WZB1Zi/KL4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660268452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MSb4Xmg4YQqZwPw1XCm2jzqCF2EJWVFFbbieqGqowuo=;
	b=G/DrBYks1BX0coWRwf4f/yDMlkL8PvXXeZxd+mIOahUfFDMfo9NMtV9aELvvq/jb
	XMwhmN1toRQIolyl3qxS0xQ27F1fCKbZGxlNpcJNzaJLGG2C59d9Bua/zpIhvl65FEH
	LxLgW0eUcvld9krj1hFVEVTgwfXcGku/maz9bljs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828fb61ab5-5a70030a-1631-4343-8f72-1404a22f025d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 61c9423ff79f09635c0b571d6f878e2e086593d3854d777c4c7460ecc8cdaa6f
Date: Fri, 12 Aug 2022 01:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660268452

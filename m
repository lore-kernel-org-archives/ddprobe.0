Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BBDA10F6
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658988052;
	h=To:Subject:From:Message-Id:Date;
	bh=zZA5elwDpRiTB4qaG8LJGj6suBeU282gNaXRbKj1G00=;
	b=kr51qBq8IAsHTAMRPfF07S3Y7FUVy9DPnxD/5IYUFV/1doyipmuYfWGvpCJsn0Oz
	6xFSFUcGg3oHzH9oi9kVPtpH0eot3lOBLHN/C71TYajwG/SNarmEui1Xyr4J7ZLcVym
	RPR+yRWolX5OK5rNZMdHYzTaZqGNOX5T5I9K1+P0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658988052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zZA5elwDpRiTB4qaG8LJGj6suBeU282gNaXRbKj1G00=;
	b=JeJvXOkGp/dLkk7KwgmgF1Fk1CXsZ6XMkxzextTETWBItTEu/js4RB54JlYuQSVp
	pFnfih7iYoapQ/oi65H/4vjkb99dZdeWrIK9JMuuamNcqcnI87j1qtfO3VEeUY+SBmL
	ItfxqGKeRBBdjE/0+FuNLqwLb4HP4Oms0EOJjqFg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824364c055-e3db6f47-9cbc-4ef1-8714-e6025c187de3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b95353122ee6a73e42d92be7c2f35a5d0e9c71cda3de4ccda93f807a823f731c
Date: Thu, 28 Jul 2022 06:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658988052

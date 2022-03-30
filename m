Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2234763C
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 13:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648646998;
	h=To:Subject:From:Message-Id:Date;
	bh=AndUNKqqPRvVI5Mu5/5Ph6Lf9oJVfK8Es2NeIo0TNvk=;
	b=fEfrE+PoqYKqpg47vPxCy5Zl2M+X/91qCTXYmySBTi5WNnul7nvUNP4J1fZC7Usd
	d0tJN/eQ9bv0RHs4fp5sC/hVkDlIRjj+BHKoweHuMkWAMRPo/DmMe55oGVl1RGe8cZO
	IJtnjCozkZRh3ibomO94ESzeYHrkk9wI/OOuivGI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648646998;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AndUNKqqPRvVI5Mu5/5Ph6Lf9oJVfK8Es2NeIo0TNvk=;
	b=Uq+tccAtyP1zjPlZ0zDDZYustHfvb49R8RoxaVnyfmjBHQeJwHRRSmEziWd65qeL
	4/jjueJ6HQrxPYdjA2VNbQLPSwpBgNvKzYdBxsMDOUgcUye4u7U/m7yhumMt+P0kbIN
	ksq5eW/Fd0bsQw/pf/oefbVJIflbCrLv54wXZxfU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fdb04c92a-93294787-5df7-4b0d-aa9e-d3500f1cfc5e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bc270761fbca43b4d03c6712f5cd88bf0e1b20a48e9c928470b52cb315b4c66b
Date: Wed, 30 Mar 2022 13:29:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648646998

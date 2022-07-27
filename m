Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E663A20
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658890252;
	h=To:Subject:From:Message-Id:Date;
	bh=Z+lEyCx7WARwGxxGTZv1SDkUAvZ3n94JfcAAFAwQOig=;
	b=B0hhW6F7IWUk4ai18yltthWjo1sNGEQFoaEusBFv1mVxWtlw4riZhDBSX60SDUVY
	RRZ6Hzvs3Buop7V66q5s4pi5yPCGia/w68hSs6OjInDN7/kNP64+mvAljexsCLO3Npq
	JzdKtsnYECJ6HbYL9rJ0cf60a1Qus+mCyHcCSjfw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658890252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Z+lEyCx7WARwGxxGTZv1SDkUAvZ3n94JfcAAFAwQOig=;
	b=iEJcNieF1jINqsU/6cv7ZRQ/JxYwcr7BO6KYGdbtXusa5mINMc3e3qgPajb4pxzu
	cUrhSHXDq83AqEuE0IFu+fxyzPRrJLfOXrClfYP4JWV6hfkVDmwC/C5qGKjXFKtpD6b
	g7Vv5j0SWtCDGhOFaZlMKu5wboP3m2rh/7+YxgCg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823d907136-fb11d20d-00c8-426b-919a-a95e813bce86-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9a9a27bf5a24f152d2614c9f90e5a02bbe3d27193b07a07dbceb24d7e7ee29ac
Date: Wed, 27 Jul 2022 02:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658890252

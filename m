Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF4807C
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 01:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655084699;
	h=To:Subject:From:Message-Id:Date;
	bh=OM8MTI4PyJSKszvcY9tMe82BZOeUJS+0y9ha2ktNOIg=;
	b=CjGunkyHODEtpT0ONKz11kkaTQDt2MncWkPHN3Kt6ppSyrIPNms8dBVDNXOzN3zO
	f1omQ/pygMrmBmWI9mkBDIzWqbunQ+Sd/NXVxwVKfAVal9UyxBisAyl0Xk96DW9Oscv
	lXwemOcGno1GJXhnA7mDPxFhF69jbdrgTGpcST2A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655084699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OM8MTI4PyJSKszvcY9tMe82BZOeUJS+0y9ha2ktNOIg=;
	b=W7ZgQpFvRwGg9K8m72aFTf93dzLN//32IvP2B5QOJfzX0oeULH3Q6MQHaJK2Zgg0
	9fcxD5t2Kg83sLAFsbqZqvEPQgMMlrTwUqJrI60xPDS147B/kelVAkYTxdAv7vitR3A
	O/QbCU7bWA7o5X8bfx16gkuFZ2MFL677q92aUVbk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815abc4e4d-4c2829b1-4ac4-4389-8a9c-97983e5af2dd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 72dad47b572b56143ed3aade701a1ebbb1d18e4311a887bd478dfe5418f37f29
Date: Mon, 13 Jun 2022 01:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655084698

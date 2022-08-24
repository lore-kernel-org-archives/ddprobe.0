Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 941BF1859
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661342452;
	h=To:Subject:From:Message-Id:Date;
	bh=bZtCRwOpa1G2yadSsevCjOagqKqXSiU0A62Xxyfdrqk=;
	b=LkN2/oAVZcNO+LmzFUY8dpvFE/lH2k/w9Vt2k1yxBzRMq9pvFoB+l+4pLX/2eSPl
	fPntuToasbsByAYrjHyfEX/1yWVBmuJZC+NtMukzcDVmp+l7ekx2p7IkSU/PK6BqNJh
	OwANOA6IO0EJca4jn9US63Ch28iev77TACm5YpVE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661342452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bZtCRwOpa1G2yadSsevCjOagqKqXSiU0A62Xxyfdrqk=;
	b=X9EeTQmToqrJN7MJnFhk4kaphOp8+R1zvpqpDiTuMGAH0uQINETWoDWlGZSlcdML
	qe9lVI4A7rdiX5X7/1LNIDtXzlwF3w/uoYY7P/XDEhun/Hi5ivE8wTfoqJoarKAoOuo
	jHOJ3ww1GLYNzAODlEbxnapkP31z+lrCKULnOKtI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cfba0b71-6f996365-258c-4f6d-aed1-0697c9814984-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: caf20d3d89e686d07ee21821b0a0a5ab405489998b357493dbab2c7e03357d8c
Date: Wed, 24 Aug 2022 12:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661342452

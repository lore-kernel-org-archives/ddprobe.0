Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 182ED7E
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 09:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654076579;
	h=To:Subject:From:Message-Id:Date;
	bh=UzuM4pIRSYnVk/ozdENhSDlU17dqo9t7nrCsw+ECxnA=;
	b=DL2UdNZWCc6I2StmsBJLPLhq5g/NoEeVyrakOBsZmwJfciU+6j+liNS+33R6klFV
	tGp0kiRLl7F2l5N52pOLNHyyHPK0Uz1PGILb0KlvYHJEZp8+Ux9yWan9UiBqhfxgMOd
	V7RMtfnfaxJ7NPFeICP0RGNLjgk3jjBeLksVzb4U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654076579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UzuM4pIRSYnVk/ozdENhSDlU17dqo9t7nrCsw+ECxnA=;
	b=TToY5l+GilHpl7zZ9to8yeNdTpUgGpwunCwgVSToBuXcfduiNc+4hycTigykoHmN
	mZlh7A6DY6NduRJOJ3MrN91ay9ACZhXuv3LrtuGhW7wEvs25ltU14p/lLz8/+aexs5d
	AmcFsK4dbcyO0bt8k4Ki40XTuhd7f9En5l0WhsT4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811ea59db6-5c7ef01c-f78f-4088-bf1b-8735ca0084bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ddb911e7d3a2931e8d8b88fbcdeac7fb14e59b59f3c0ca2fdd4aae0cb2e11f78
Date: Wed, 1 Jun 2022 09:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654076579

Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1144423CB
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 12:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654517339;
	h=To:Subject:From:Message-Id:Date;
	bh=VszAJeEPIQI0A26pSEUhEJnOPuMUtCfuWX9NHptyVOU=;
	b=Aef/sDF4W46GpFZXS310ZrXnGh8uLiVMy5ilJAX68FKOiihbI/N0zxJJ3J07ZtTN
	fG5iJeUf02uxAHjb9cEMZHT8S3sYZn8XsdXTUv38GwWlsbY+2riIfRYAgGHqmuGG6nm
	ax1hU02AJ7zXolGtzLcputtYtB5TwLyc5v9jyJKs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654517339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VszAJeEPIQI0A26pSEUhEJnOPuMUtCfuWX9NHptyVOU=;
	b=cABfhLtoto81Mgo6X1e19/d9NHYBmOYm79qnhvkw7L+w+X2Pf+t+ZIRPJK+UfjD5
	z4I/UZIKGIv7JpD0uHkxI7V5AivwphtbwsdsAsxmz0rGMvyAMZkFnLOFpdw6vg7XSPh
	Xnv86k/I5CKRpefu6P74HPGkika0LxPYRM2blchQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018138eb148b-9491f192-1051-4139-90f9-aac552c19533-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 18da98b513431bdd9baaf0495c535e2962a03309ba3e4ec7898feefb61a8806f
Date: Mon, 6 Jun 2022 12:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654517339

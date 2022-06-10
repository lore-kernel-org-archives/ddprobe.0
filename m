Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0CF97A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 13:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654868159;
	h=To:Subject:From:Message-Id:Date;
	bh=wAz6sRMuR1p9oPxwBpUDxN8+fut56WZlRsRSRLZ7xEQ=;
	b=hpuzsyqwFmexrYKsbEgQ5bp7Kdm0/oEGICXhaiHrv58LTh6HGS2spVVqkz0Skvdp
	HAnD+RFO6vsHMRUugVv5G3O2TbPo+px72qs52O1s72p6ZLZDKmAuIRNJgT6lFZkvDxq
	5Y2JaooDa2h4u6bpoPDs6K+NENeW5oZa4qVVB6uE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654868159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wAz6sRMuR1p9oPxwBpUDxN8+fut56WZlRsRSRLZ7xEQ=;
	b=Jb6GCz7fgcFx6kKrhxv5XRm+2N5H1vrPBcrsxtn3TS39ui0kpYt9QEXvJrKnFW5p
	VtXD3cV9ysx8Q8Ob/JT9/ti2DbrmJTOvrtXKoaH3I7Z+Z2A6T/ZExLa8zup68fZEaXb
	cnCPvZ/rInnDaAeXZ6sBIfZqMzJus2H4K6KYsKs0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814dd42ae7-53b1b6fc-a09b-4b70-a545-6f37c7ad82db-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 32debda6e460e7aa16d183b918657b0ad127e0685d43691466703002d9447b81
Date: Fri, 10 Jun 2022 13:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654868159

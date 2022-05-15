Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EB5B623
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 03:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652585459;
	h=To:Subject:From:Message-Id:Date;
	bh=NJPkMWF93xesQIO3PG0edUxRvd18V03gsrc81maDU0E=;
	b=Lmq/bx3Vb2PdaPMTfQUPc2XsZi/g6ogX/TmJk9/Hw2R2t3DtZQqVd6l0ZELjvWDn
	Z5flZKY2W9CK3ZJT42IebYp/+cJgG/hH3V+DSvgcwPoTiTKyV9PQQl861j7KLyPcaY1
	ZbVT1SY1x91sZQzNvNU/dvbHv+4QVknjEEnn4bGk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652585459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NJPkMWF93xesQIO3PG0edUxRvd18V03gsrc81maDU0E=;
	b=NCz3UdR70pCTW23u4bMnEOeXvbPfypeXbYFqOFKtl23eilqWMgnDNQhNHR4ZD+YQ
	Lppxc30358XYrgdeX9afs8Ua5nUuzckQ4bKmVWEDsoV6PYLHTo9QrbcUZLzSzXgYnYX
	FP2r6i30ibo3O3h0EO3Sgr4jiMnIBQejn07bnqK8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c5c4ee69-dbc755f8-1396-4f7e-8761-6cd349dc0339-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa2182ad050eab2fdaeb44e4ef651744276f12ac665db26fb8efa4b2569fd85c
Date: Sun, 15 May 2022 03:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652585459

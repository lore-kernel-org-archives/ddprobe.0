Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4477E28EB
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 14:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656080212;
	h=To:Subject:From:Message-Id:Date;
	bh=sueMyo01pLysLzMHaepK06N0WlCuy3zH4SkTEYad/ZY=;
	b=jMNHSquneYIaCb+hnhwGIzIqlBTB3hcOI4zzVcR3FOa+wrakiaMfKUmAgRWLyG1/
	J2I93YU9m+p2QlyLDxI6oZBk1JnafCXH1ZnaKwReohq9MLZeo87+FetCAyx2jfz/pBd
	wRlYW81ECqqhh3Xg1iR6FcxGFWtr91ZB5QRyP7H8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656080212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sueMyo01pLysLzMHaepK06N0WlCuy3zH4SkTEYad/ZY=;
	b=TfqOA4Lde49V3DRAis1dpiAgVLFw7Ol8C2MbES8ivB38RYcnfsmbR1GEmUdAp3Ie
	dzlXu14OXtbeqzp0zivPl+3HJ3q+GBebZ0xozWjHUvJBkhkPIEpdMDf5VZxwXwUil6R
	nMuWguMvmFg2zXPxMmFr2Og1unPd2xR7VQZflv+c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819612a145-f0db75c2-4e9e-496b-91b9-fb6aaaf391d4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a609d981f0b25807281bb7898404d8e45fc9ef5ec5d3d9290391d284b87495f4
Date: Fri, 24 Jun 2022 14:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656080212

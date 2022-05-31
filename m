Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7302F50
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 15:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654010519;
	h=To:Subject:From:Message-Id:Date;
	bh=zoLeUbfyYilFL4s5eYIGGOkC30azH497pXEbHzjVOwo=;
	b=dNCW4UFVN/hDN0r6nbPFjbEHS86ISI2/lKlGqCDzGAUwAJbpIiOvlQ6jmPpx7UGp
	//DcRoOY3+5nEFK30FMse+0qv2x/07ifTukepk9ITDR/uMKC23uJEYiuc9MGreRmzNZ
	OgfcHLXuVyW3+e45zcEy6ep/nl38hCdv+hjamZYQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654010519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zoLeUbfyYilFL4s5eYIGGOkC30azH497pXEbHzjVOwo=;
	b=ZXh9AgwkCom+W3JAoOYqp2Ix0SVwJnegj+B02O4F/HP4ROpDg/J9aT6UnmpmKWkU
	xTgX5YNFPNskC7Q+8FzA9MLA8P1Zmr8boxMCHSaItwjDvX7Le5XOq/oI9IHCulVGctr
	+Z/bDYltwtzTT8f+POlMwnpRCFKeaOn+HuymR0uc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811ab59ee3-24c3e34e-1ac5-47b1-8e69-c4322bf227aa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 546ab0032c28efe7cea6dab6b03379421628c134ca9b5a8e7b42555fb85ecf36
Date: Tue, 31 May 2022 15:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654010519

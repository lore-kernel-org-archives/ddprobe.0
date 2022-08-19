Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275FF6110
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 22:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660948252;
	h=To:Subject:From:Message-Id:Date;
	bh=v3Wtx668RklmIPsN5JXlA1Mv79pjh0IYS4AsUNFQfbE=;
	b=kIyEOedog6YCSxP5l/zUJ0JjkDNu7PeHQtnLbQ/AazpXKc6kHP6BKoai69SAav5C
	Q2ABLYRCXOyMlRbWf62XD/uEa1ssdli6196/2PaaXZ7pPONMcoi1qJEcrXZk5DUKaPc
	fJ0Jvgz2a0oJmHpg4+6iWTqUqlHBjb4aK0IsKDkk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660948252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v3Wtx668RklmIPsN5JXlA1Mv79pjh0IYS4AsUNFQfbE=;
	b=EPYW7VMUsrAmk2gxhQ4fSpOskR5Ljh1HpdDkDmW0Vaeg0z0oxsj9A6Q8oGJQTpNJ
	xgA0ubYcMId+eoLW0CCfNFWz7zaA91Q34Jtq8BeiJnmS38uOwq8tba3VBlkQlBCbIAj
	9/Fu204IBjfxJLI0VYaCN8qRqNJmu30VBORXkQOM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b83b07a7-119aea8f-d2c8-4a5e-951f-feca094456cb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c2682ebaf7bebd7c78aa852c06737687068a5d290d6e374ffc0f2621d2c5b63d
Date: Fri, 19 Aug 2022 22:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660948252

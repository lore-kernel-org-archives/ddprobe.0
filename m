Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 501087C
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 13:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654781939;
	h=To:Subject:From:Message-Id:Date;
	bh=lyqYA3+WCBbYqFenIFLqLV/LgPAcC2KCaYm4hWQXedE=;
	b=WoLknEVEWKGD8rOOHSnwZ/+LUvWTghiKNt98p9glAgLE0PZA7VLrurRfGL5cClaT
	4INtcvS6vvcgzECKmmqYqFKJPfAMETRHfQgodzbtJcCHYh6Che+HGpVMjImO3LuTMEP
	e8HATNeEp75att35lmO36r9pGbYm0Eq/orhtUJIE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654781939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lyqYA3+WCBbYqFenIFLqLV/LgPAcC2KCaYm4hWQXedE=;
	b=kR3V3mXZoElaRFWsWM3AXTQZjzByKtpftfTC8gac7Rc90u8hWkOlY06UHojJ8paN
	5unICJCXcCqx38BLXlqTF8gG6NTLGw6011pwI4r3ELedOT791hep9CDScQ7tkbWVJqm
	Hm7r2UV94LRYt0AM3E+6qn/JfGwMlnjpu5TqShsg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018148b08e3c-d7214c14-a0cd-48f2-9d85-eee2f4c66f2c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0439bcbaf2ef66f232860c0372ced3356a4dc08f99e9e37501d40f79ce310d8a
Date: Thu, 9 Jun 2022 13:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654781939

Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C530184B
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 17:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655142239;
	h=To:Subject:From:Message-Id:Date;
	bh=iUVmXkic8YLxJSBSHXlzbuMh4QRzTKlqkMfEXeYRyeY=;
	b=M+IsOH45gLkOyzbHm/wub08bv6/Q4vag/khuOx67MjQyLPLCKbyF+C2pY0Thz6Xk
	3HbFvJ6MfQ5LOX7/JdvlBQxV4tIiDr0KqaCZuVpPpvrUvS5Nr7satal11cIgG0VCkwM
	Kqu9xxXjYQaID3rPc9A6cOCGymyzFSN7XVpHPUcg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655142239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iUVmXkic8YLxJSBSHXlzbuMh4QRzTKlqkMfEXeYRyeY=;
	b=SaLlewkpvprNOqwDggwBVPS/B1gj4Tz/Nsx8+Q5MozgTLny7h1RuABo1syLXts6c
	vAJImTBfgT2k4QR+rPw4rQQLoHIwn581do4wxyFcjsEpfbD34mpuPIYh9ZyPcO2Lm1k
	5OwsYzO7I7lOoamFgPpSZ11J6YRh/bRzhMybhH4Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815e2a4c42-149749f7-56b5-45b9-884c-b86ff39b186a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9fe273dca0a658334922c481c4b3ab963fd5a858dd28a0d278cf5a3f7742a58b
Date: Mon, 13 Jun 2022 17:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655142239

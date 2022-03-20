Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 606FE20E4
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 22:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647814584;
	h=To:Subject:From:Message-Id:Date;
	bh=h/NLZpXwKHFmqMQsm7V7mQsXlmVqC3neGUu0oQTPGY4=;
	b=aFBZ11Aqmm308eZ/EscJwcAVEgYadaebGurfHjKDwSP/tigXF8ZRDa1iwlOT0gfN
	HY8ZGXD27iLyO2zjDG3jFASjZWa5PtpmKdPfJVCIPdc4M9wGE6mxyUCXIBtsqlVRAio
	8o+XvXJzZn4jbA8dn0j19Wyg3QVWXHzF66xo2bXE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647814584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=h/NLZpXwKHFmqMQsm7V7mQsXlmVqC3neGUu0oQTPGY4=;
	b=YpdJBqLLbyhYVmZGSF0d2xTzgDsLuQ9keEyD/bnMJYwT6sN6DAyIzj/+rB3DCFL9
	0P6/NngqOzzNGNZ5EXftfhcf4vsuNLZ0JB2ImDyHDMBnvtaIolUgYKNYmAXvs5G3DVi
	jd2DKwKiB5PoRrXzHm4Ox8RnC7cpliLJ6Jy967Xs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa9672993-c44cf434-cb27-413c-8e4e-b559e84dd5c4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa3b36fb07d2809138161460a06c9cbc61e209d8afc9cfd75ddaf1126b2fe0c1
Date: Sun, 20 Mar 2022 22:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647814584

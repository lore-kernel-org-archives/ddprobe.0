Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D63C17C
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 09:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657098412;
	h=To:Subject:From:Message-Id:Date;
	bh=fC3RZ6sIyMpni+dMyFt+i/ZJf7GRAEiAEjKqoMYvK54=;
	b=YfioexAMvidPHBmYakLxvAFZY9c6dU3D0IlSiUgskvMR4GXQhzfNqb+qjbtxHv0G
	t+K+RHZ4wsiG6AGF2fYG3Z8Gs7HPEEI0LLo0IPAN3CnDP64FyfPA9lJlaF0hohw154m
	NeU3+8Kz+9GMrUd5eGxH9g8EQcY1emOGYcsBL2Zo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657098412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fC3RZ6sIyMpni+dMyFt+i/ZJf7GRAEiAEjKqoMYvK54=;
	b=HKMYPfzR5Zlrv+XjzRDZ8mO4f0AFxhuyZguk6vNrpke/onnXiL94exbF5DM8tJPj
	AKIcpHQRNBkfu+y5cL2FTcjiwpNxWpeu/Q1x5kceIdwXFOFrVUeLq4bfsY7Uy9U1dhN
	/n1Dsyn8ppMzxziKQkLqZglZBUGZShBmt/pOG880=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d2c320e0-11dc08b9-6c44-4cf4-b4e5-cad0d31a57d6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 14176dd85496eb9e7ab4fa8b768694b621158cfdca4a61973207e81ab4ea0d66
Date: Wed, 6 Jul 2022 09:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657098412

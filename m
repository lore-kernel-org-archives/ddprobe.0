Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEF2D23A0
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 22:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654555139;
	h=To:Subject:From:Message-Id:Date;
	bh=y9IPtXae+bW7Zlvzht42Mn8+59ODuKBpcZChshM/70M=;
	b=HNltc7emqS1ZeipV4u4fwyZ51cd3/3WSHPnsvDzu/7a2m23AIuEt/aS5JLCGVMRL
	rIiMlmI2ub0hTdzkS5o4t+xzeZaB4NkdslaLi8HlhJABt3TbjOrpYdwAiSCRz4O47sS
	cNdiuoIMC0IJFP9+YYrlH+XdzzEhDDeUbSz8+PuA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654555139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y9IPtXae+bW7Zlvzht42Mn8+59ODuKBpcZChshM/70M=;
	b=OegvQJvdO5WHxiIOp913nz/7nstfEEiQhvUwEpxSnF7kiXekPpW6SX7GuWeHNyFb
	uvqCScg7rhX9bMogbeM3vP5/sCQoySmadjhjAXHrg/zZY/wMX077jXipCoV8BBPkApm
	nKGGBAhKixyrfv07WNiBAXi5JHtk8QsOHri7HJHI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813b2bdcc3-cfcc23aa-dc65-4da1-9baf-be77f1eb23ee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 62f39c412c39a48e402ed1149e67799c8c958d2872e59e16662248fb584f9c82
Date: Mon, 6 Jun 2022 22:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654555139

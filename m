Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 516E17C
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 12:30:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655209799;
	h=To:Subject:From:Message-Id:Date;
	bh=7E9XTPoBgXLGICkT1D7Nxz8mOngYuiSwBcAPd5w5ctk=;
	b=LMBBeFEtw5cSoFWqD5VmVHaFfqWpV3zzzKfBgTwRn9b+TsmGxSlF6vS7W9RWV37J
	2hARkFPlkADZDnJoSUl0+iyTt1BADgPuabaGFM4OqIlUnxgdO8arvMQlv0JKkSA4+7+
	7UUUOzom10rOdeN8h/JRQniosofj9Pve3PyVZc3Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655209799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7E9XTPoBgXLGICkT1D7Nxz8mOngYuiSwBcAPd5w5ctk=;
	b=dBaBCR7L78EmZtrOL1YldgNILGglDmpS+Hpj61ZgkZC71svLnDHQVrIrh6eXKR3/
	rmedDpe8yC05GvpoQXM8WSkExY7XImu7zlFZTzzfCHAssB+O0dOn6G7eAZi8eIL52dF
	JcKqvfSEg8ZcI+IvHlptZ7VAXZRmrbUW+2BgowBU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018162312e76-4090f999-7616-4465-beca-6b84f858b20c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: db7384766902c497c7fee880c8c630ae141e768e95e3ed6a8ff9d2c1c8985865
Date: Tue, 14 Jun 2022 12:29:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655209799

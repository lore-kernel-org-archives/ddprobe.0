Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F31A52
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 06:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652681999;
	h=To:Subject:From:Message-Id:Date;
	bh=4dPOgxVoDnNNi237+fd5M09U5fGq1WELspvLUkSedwU=;
	b=gzGX+HUmKefG8sc538vSgjkDbjnDDzAeLJhhEBsRzroMwlCCsN7Kx0eUK+3/aqws
	n1EJ7o+ToJsSe5ROjKVa1jktgOkSUNkZBLBpzc94BhoUvKDdw0TtCBffPiBL4mJxqgm
	+gsLOp7wFsP5Vsri631rgIeedOnakxTQhvGMjYec=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652681999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4dPOgxVoDnNNi237+fd5M09U5fGq1WELspvLUkSedwU=;
	b=NwEE0H7Je3EAn6OobB2Btny+VjKFlCSTbTTSr1x3ygr3H//RdaXmRKetG3fAkaLM
	Z653rnwMMxiYKr5SXi/Bf7QGAsMpny/rUpIIJLupTivXnIxeX7NfaML9l4OxqzZTkU7
	OYG0GQ5s/EUBZoNqYSQlQKqyctFc/u18EAUmmcIg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cb860425-4c744e9e-b2ab-4fcb-b636-763b6fce4980-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 57dec78c0f2397635e5b3ea555dbfb884f75468a4740ffad6ac0efaa3b73c5c9
Date: Mon, 16 May 2022 06:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652681999

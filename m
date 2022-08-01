Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ABD87F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 20:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659385252;
	h=To:Subject:From:Message-Id:Date;
	bh=7PwuiASutSWTmu/Wiy4Pgw4qZGM8sZIbTBwHky3z6/4=;
	b=NVP+QCCcEewJHzjzsDblz55MynCnQMnA4XK0Vs5zXbywUwnVK//L+iVSujAfAGau
	6tk4TMt+8qkuz5/UUtsgY8mtwxuCnsozsoSDFsbP1omN7+yeDVSwiD2wPoY+Auk+lNH
	w3px2wcYVVvC3dEFQjLKIMc8HCchWeUAIITxAjQc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659385252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7PwuiASutSWTmu/Wiy4Pgw4qZGM8sZIbTBwHky3z6/4=;
	b=UxqFWvJEZr4ufntyfCDEaxv7E2eldGsYPwNKw1ao1Ic3XJXytx2Cm2f8PhJiyTXP
	hxgO7VAZ4tEdQkN2Xdgd02ZvdU83pfUAeKy38IhXpQvzttYeVe5/KbDoXK0DFpzE3Ea
	cf8oY4Fj2U0fsslBm5xQMbN2y3Pl7TZRQS3QE9kQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825b118af7-e46ecd8e-bb0f-41c9-b822-3d0efa56a15f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d1ac5c6ca1e870509083624dd6333fbdd1e8396d478bf44e1baec29bbecc5ed
Date: Mon, 1 Aug 2022 20:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659385252

Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF05610E8
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 08:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652777459;
	h=To:Subject:From:Message-Id:Date;
	bh=2SzaY8x+nZayqnCTgAQvp+RX61TnYi38dokxjx5pFog=;
	b=dEQUOf6m+LPLJlxO2Pzh7LpqCAR94hSghoP7sxPeNgtjvhmK04A+L6n8qeiMR3kH
	g7VrhiFAwcaxKJ3t2QaDx0YBw/yV4Yu+agsE/Z0KxD5B7b8akyxMacr37PQMeaoAzop
	KRmHFvpyN6gF9d0NpR1Qn+Yd2Sx6/0T3Y2RXoHIY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652777459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2SzaY8x+nZayqnCTgAQvp+RX61TnYi38dokxjx5pFog=;
	b=jXIGqFXAV1JsJSE0uTCFMaUX0exnPzpumijdg9PYcX3zn2vT2/Vzw4O8Vu4I5+J8
	csq9wgV+k3oKD6WDnVRS4p+coOo4sD1NnFgdfQio4FraduPApeITj7lCofoEL1jMnbe
	5/gZyNJnueh3LdQN0Ad5YmPnV/sF37zrgeCs14x4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d1369e2a-3e638e6f-f3e4-4ba2-afb3-92210caf8774-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e9ee4b21b30b601a69b4c106c30ebf60a785f6af866d1e46af6d956ed017c717
Date: Tue, 17 May 2022 08:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652777459

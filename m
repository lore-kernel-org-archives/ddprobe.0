Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BA26A21
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 15:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653407819;
	h=To:Subject:From:Message-Id:Date;
	bh=4HPAwLi9mf7F9VCQljaWvolxhlg6u+Dif2Mqt5BGvXE=;
	b=B0PaSI2y7Al37oOo09GLRQjjg/GkHGr00COUkM2ReZTyBh5mL56xG34Ze1egBbsM
	8E3AbewDb8QkYezoFLeUL8J42AImyPhPO0XZWfQuvPk0eT1e8IcaPWb8QgviY7ndnFu
	XmKaAFta1d50gID+bwKdixF5Nf+1oNNWJ37UsUL8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653407819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4HPAwLi9mf7F9VCQljaWvolxhlg6u+Dif2Mqt5BGvXE=;
	b=PVKuNm2cUSSoHrn+ozuYQAtoT0dD50kzZgDITfitNrSdDYmbLEJkbnt12nzEfSub
	ePxhGlsHuWNsUlKJJeXZZnYJUlhl3/hZJrOlp6V3/eib4+WySvzpkV3Nh8GBrM3BjiU
	AAhtPizAtcGYzVRFbw/dj55uXIKO4QQ0aovcxQM0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f6c92624-e2c62dd9-ab6b-4436-a07a-b5099777b92c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b752c30ff13c9d8d5c756e1d8ee6ab6d842b6a4a0b44a002c43ed2a5db0c9316
Date: Tue, 24 May 2022 15:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653407819

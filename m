Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F0717B
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 01:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647825385;
	h=To:Subject:From:Message-Id:Date;
	bh=N0IrDkxykwyas07msBLG0u9Oi0kGLwkS/eznaWoe/Sc=;
	b=VYFf7L/238ZvbawJZzgbyRmMprdzvKLOvlvMawlx4mtLhHDJvao9ah5uo1XTBbw4
	NMFVc8OpsEtNSqTWV2XJygLArc/esfkxDzHL4UjXzJnAiKNaC58dsEAmoYBGdHnrQtW
	IGK/qfjcnSWKVuqR0iuEyhSTwS7gi77vZYkIdjbI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647825385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N0IrDkxykwyas07msBLG0u9Oi0kGLwkS/eznaWoe/Sc=;
	b=TePeA3ZxlqaCGBVyBMcapPwc2QLEqNamzPdJMCfg1gA9/4W9mXyIkT2bu8Tnk+U0
	qT/ofE9w8Xs2l0/kmRsu9mOlCHc0Db2mienU6eNGlZ5JLna3Xej3AkAO1LB5srwNXTM
	OdVVncJgYK+N9/cXOHJzAClVSUKfLnlXRQRRpwlA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faa0bf542-fa23d1d2-ddd6-41a5-b3e9-8ca279eba2e7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d87406de0a4dec157e25c9eedeb90029dfd2edbd2ddc5b187f1f828eb531fe41
Date: Mon, 21 Mar 2022 01:16:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647825384

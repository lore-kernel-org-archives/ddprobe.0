Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A38C23C2
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 08:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652170259;
	h=To:Subject:From:Message-Id:Date;
	bh=WdYh6m8H15neIIvZdUFAP7JE/n4M5fSBr+eHJLyQ+uo=;
	b=dzvPVJdemK3mFnvKyWVJrE7kIxF19LH4CxJ+9mgTEHq+marxEuB+1zKbu38GmoN4
	6aZd6CQrWY2MY+r2loLjg+hgUJSeFhCyN5PDhlyT6JIlVHUiE5tjD42HUAgtlWzpo7z
	EedqDnvcgHS17Ge9EqRH7Hxilmuo5K/ub6Nbs3ok=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652170259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WdYh6m8H15neIIvZdUFAP7JE/n4M5fSBr+eHJLyQ+uo=;
	b=UF3YSyXl92Hvp6KL1iI+D+h37gwnNf73fgbSxIk4/ylFMcf57vZQQangu8GrbIgk
	zKiYVVQuAQMV7ZwYH2qJ38+AsG3jrP52B5MNoGmaDslK/zAS2NmUB1p4gSGDW75HDsz
	3cmkSRWwohIiuSIQ61VPpH4V3PXjao0CPe1234lc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ad057b25-e32f0e38-d236-46aa-9fb9-021b71236341-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f19b0d8139e397b94762e8e1cd17729f2fba5a50073bf3be9d7d6077b6d5038d
Date: Tue, 10 May 2022 08:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652170259

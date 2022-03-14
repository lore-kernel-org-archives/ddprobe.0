Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7BD76AD9
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 21:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647294684;
	h=To:Subject:From:Message-Id:Date;
	bh=GVxC01Dq+9rPQbUrGdszqZxD/UZITvvpwkZUmp3Wtz8=;
	b=ID5HC8iCKc7o/se93QiE5WFr+ibFsJf25SWGc/lNTYJBqL9N2gdsOMlivQYEblWb
	g4imJcz0UP5ZZgntlZMtoUUYDcZLLrlx3sECePhCtsaITIN2OEtgXSrjkeViYuhE8PH
	0Wg3nmi4L6KPX5aQR01CZ0W4ByJMlG/HF/zUM4FE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647294684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GVxC01Dq+9rPQbUrGdszqZxD/UZITvvpwkZUmp3Wtz8=;
	b=IbcU+hnMfj7XwWPzkhuZlULrCzX/FcaGTWjMI2QCFYstlygfUM1qW6euZO8KiS12
	ZjsBi28YGnWh3kJn8oSZRfmIhKVhjEeG79Bju3wT2RagisrNNfG6fAlhbnm5h3wUeZO
	ENp9LfSN9vUXyKOWY09uYM7+cZvzxSav98RZaF+E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8a6a1e33-fc69631f-958c-41b2-859a-4b13a7ce11b8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ae4c186cb2fe97f80d111ce839a8288aae89932ce89d16ae0d01bc56f8573fbf
Date: Mon, 14 Mar 2022 21:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647294684

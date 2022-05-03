Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D4723202
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 14:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651587598;
	h=To:Subject:From:Message-Id:Date;
	bh=HkE1eCTpldWOrmTTpUd4yr6DjPmCM+Hmq6ctFoEylHg=;
	b=GOFu++x61c59kFHX1N8g7ZkdYguv/XI+3NxEnp/dsEdFcZwmFWei6ChSBr8Qi+eE
	LjugcU0eaiJV1/sfxptuAnM7xlR1C0CWsF2kWd2aIBv7Qa3XqhoUIbu3vY13P6/oQO3
	N8wJiyISBQnVs/VbfbeSG0w5iuJYHP/oI/Wu8T9Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651587598;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HkE1eCTpldWOrmTTpUd4yr6DjPmCM+Hmq6ctFoEylHg=;
	b=EAaWrvEwZHnpYdVvK6bbleBZHliolVgayCurTsvHNeEcRebQqef8x/JADlRdX0xY
	KPgTNuzZOXBge4JM2+a/g5ZX3jG1PrQRGeVQDfBkWeN9Dd4tBP3jlpqjkxVXTg2DYeF
	57Mr8nbbTKe2r4UUdGoeRL1xVh+1lhGbXpmmQlaU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808a4ac7ad-3435fac5-cce2-4b75-a1c7-0cd5446d8a41-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 92f6772d4d2c438a1e99f89650e6999aeb9e7aed3735364f7cc86439e6a7cece
Date: Tue, 3 May 2022 14:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651587598

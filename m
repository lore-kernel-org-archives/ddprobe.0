Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A65733E0
	for <ddprobe@lists.linux.dev>; Wed,  6 Apr 2022 15:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649257858;
	h=To:Subject:From:Message-Id:Date;
	bh=RX8ZBMmHKT9Zs0v4HuJ0uz6D7K1+vKJqVcHoy8iqt+Y=;
	b=XrZXO6xFg5OD0z2c+i2Hn/ZV1phhcgWIE1NwyhfcgfbKtFAmdEF0tKETp9O0bS+p
	Y2+MzgXvyJ0G4plk270xu5M0VKX9Hlxd/s/b12OjCGSxBAyUMdAUtXiGrwhFQTz9tJL
	jJC5T3MHyDXRLtaFRJcI/mTez6Vx8sdvxA4xlXb8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649257858;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RX8ZBMmHKT9Zs0v4HuJ0uz6D7K1+vKJqVcHoy8iqt+Y=;
	b=j5ydpwO/qfBrn+8R6kjrYMgJQYY2jOmf3B9vOALDgcfRNObT9m851my/PZC8tWqo
	JnEOlLa4KJ74CswTMXOaOab+SIpWW7AuAta9sSROMWsD6Kg2w5b0Jmv7iM/YyDAeoY0
	CfGG0LzQYUnix8//HKVEqjGozF7qHU45OxGSjQvU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fff6dc504-115bea7e-e9fc-4791-b0f7-39ec90ec20d0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fd96e267cebdc8368886972f47140a814c04f5347a689bdc43294ac0b8eb15e7
Date: Wed, 6 Apr 2022 15:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.06-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649257858

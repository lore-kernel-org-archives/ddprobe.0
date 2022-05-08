Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A78B1879
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 22:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652048338;
	h=To:Subject:From:Message-Id:Date;
	bh=tC738zXGwD4hQOKAZeH/5CJ166WeTYf4y457eQ2XXJ0=;
	b=YPYvPamUZMmWA9ohn9TTpKSrHIcDTun1q7HxGyzdmPaSMWJv4s7VNMXQmuDUUeT6
	6eQGQOL5ksiDRnMBF5pyWLUuhXmKk9URft72sHk2bPUwSz/CYyBCBjvC8zVrSyu4CiE
	zNTrVQdgs2YY/6UA+5BeFJCXKV2NloeO1kwV0eQ4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652048338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tC738zXGwD4hQOKAZeH/5CJ166WeTYf4y457eQ2XXJ0=;
	b=U6oXx30Qlna4rhVHiqbmGB0HtAYwW/iqnQ27cO0GDrVrc7EDGXMoKCpAht3FEKuO
	6HlCFiK3TjLT2idWGjHxW0cT8awCNnJ8U1GGIFMi7yYUho0/VShpUTJMQrX5CVs6MA1
	5Cm87nznMPiWVJxPvuzWNfPeJwGONdaz1aaZR0XU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a5c11d9c-cc7170ad-5284-4419-a340-863c8f4013bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 54814b2f45b770c649f5c12651a647896789b32e0b1a18317a839cbb05c6694c
Date: Sun, 8 May 2022 22:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652048338

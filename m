Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D34815A3
	for <ddprobe@lists.linux.dev>; Tue,  5 Apr 2022 20:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649190898;
	h=To:Subject:From:Message-Id:Date;
	bh=moq/hBW1MfuRAhDCOx/j+uCqWa1qsEjrq/IB1+GG/VQ=;
	b=V9JjF+BOgKRz9tedClv8ZSvlvbczmFET5kp4emBut5T6W9uutgtC8PIghGDw6sLY
	34Ki1lz6Q1Pnek/jxT2I4Ca8Z7rl7XglBsceUHuaINY/qvMn62lHfvnTPG8YvPqFIwo
	GlGQl48ehBqJpjszERCIEDzGNqrK+Vzvyza20mB4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649190898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=moq/hBW1MfuRAhDCOx/j+uCqWa1qsEjrq/IB1+GG/VQ=;
	b=gjL6Yyz9tzMIsxxXcN7A6CKDE7xusLp0XAI9BP3z0lGm5hsdv6gyRhvFG6yZ7Xlp
	T59dX17w+tf/2rzsKisusnJ7viEtPE8O6Kz0nT7bZJ8Yhzeu+PhBKTFZ9OTVafatBvR
	hXVD/7mGmh7fO5Y6PeOX4radp3sfvtBteDC70NeY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ffb700be8-a10e3588-402e-4dc9-8270-a989e05f7c52-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b2da7dece53efd781a3f6f9dbcbe089287c5ac475f75fe2752889c5cdb5c54cb
Date: Tue, 5 Apr 2022 20:34:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649190898

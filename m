Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC0377E
	for <ddprobe@lists.linux.dev>; Wed,  6 Apr 2022 00:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649203258;
	h=To:Subject:From:Message-Id:Date;
	bh=4uxsBfuJlKjUdByvCPGfOoKzgp24CcM1yKOzxHdNDxU=;
	b=XKv9gPTnFAns3H2zAaaF5JTqhxzkgP43nMYdbfoeJNqLrcw5g9LqKT/E/CMiwAEQ
	AfQYmlcaERUIdonFkecmE0h5AYV7CjW4THcO2PPpLVqgyX2PkwjPO1qur6/9WO1eyFY
	FtfXbGwVQF+isCQnQCCyo5BR1pw/Swpy49kcmDbM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649203258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4uxsBfuJlKjUdByvCPGfOoKzgp24CcM1yKOzxHdNDxU=;
	b=X/l227T2OMk7wEWJy0L3Qb9MGqkvCsjLdn6E3ULLKhQKJOeOIgeqkmcA6qno5qC0
	zJeM19aehEuNxRIR7swxpbSl30Rk0Y/IgRIrcu3ARiaNvnibLmg3lWan2PkxhCkxc2I
	M+7vdz0JauEv6py//ZzogcscplNgwzmWX4ZrNoGo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ffc2ca370-bb425529-96df-4378-9c7f-4fd2ca310b35-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc0d70c25ae091ef73fd4c63918b3dd4526b56df17966f0e74d3ae756aa338f5
Date: Wed, 6 Apr 2022 00:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.06-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649203258

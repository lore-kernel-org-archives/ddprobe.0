Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B44D1FA0
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 13:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659186052;
	h=To:Subject:From:Message-Id:Date;
	bh=rn/Blq0gg3V1isj3c3YF/MkyxlkrLTJcETM/s5QqATY=;
	b=N1iyggfahy3Cz17TxQof63oVzkZ5fFsn9LIlQUCkAvLT6sI2Rct4MCXfo1dYLIjJ
	85s/E9OrNW+PBv+mvdgsNdyhrHzF87LgpcPg7L7FJX8352pB9IFWVlI/tMcRH8Ea0js
	QuCHZ2qjDddekAxmgVkFrZS9xLfQN3ORovXuYXi4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659186052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rn/Blq0gg3V1isj3c3YF/MkyxlkrLTJcETM/s5QqATY=;
	b=dr6Dxa+yRVbP69Y4+FguIg2zW34c88I8x+QEhJJwxEh8ReieKSsxROM9bQd0WYm+
	FlU/Fz5pGl86r6L8mNP3gBan47VOJjN+udKInhlrs88ahzHGAjAOI6ar8O4ZUutQlD0
	tASe8+tS02UIEHT+0Qajz5s6/eO9Mb00ujwrhDMg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824f31fdb1-1d568e65-8e02-4e5a-b18c-ffa89db3078e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be88f0dbd699a1a9582ed1fb0c981d03d7b2c26911d84ff20e46621166e12784
Date: Sat, 30 Jul 2022 13:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659186052

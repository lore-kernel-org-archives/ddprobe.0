Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5805C5391
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660666852;
	h=To:Subject:From:Message-Id:Date;
	bh=D5hiXj9J0YvnSy657EWRltkhSwqoOu9uhlV5j6BlvI8=;
	b=ENCpJQqepRExCduRsyCg5WFjSUTWhULb/nWIOkSfARlHh+Jjrb6iJRm/Ugy54CcJ
	QTf3Xfiv56dxcqHNjHpQ8Hw3H+ImyfZ53yFgiCLusMcZG3A244wk92+RafLMad/7MEG
	MyqRkKTDfMiphPsJ9UfU88msEu2f9UPDHB+66k3U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660666852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D5hiXj9J0YvnSy657EWRltkhSwqoOu9uhlV5j6BlvI8=;
	b=ZdWd9A1ncp4BMq3IJHm6Xx/IN1hTkScAw4A1kx3AbXX1KFMq6CyJQ/tVJXp3kI4e
	FvM26prGPDWgxZ7WzPqsRjLJxOmS9qfB83U7KAQ/OuwGXDdh/mLntaUMj+7KukTRy05
	k3KAFNmxSZGfKcyFyomcle5wUhztQsOWpeEVhlwM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a775353c-b083ae3b-d1d0-46b0-92c1-ad552c89194f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f4904bd7153f333300caccef33a2095093318f6cc8b84989d08a797fc0327137
Date: Tue, 16 Aug 2022 16:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660666852

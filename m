Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241131110
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661332852;
	h=To:Subject:From:Message-Id:Date;
	bh=1RKnnPF6b/juTZd3cApaagofqkDY1gqVMuFzGgl5C3Q=;
	b=KH2yOT8NGGUMvVNn8b4etGB9OzPYMwfw6xG32M3ymS2D/tC2x1aU5TpISX7EhS3h
	4+PHMKf30yDrBS3a2NaH8aGfMHb64MUC8KlSV9B1F9HqktLfEz5boYpj93C7XRzC7BQ
	GT8bfnNsbDotixxrXpmXgbtcn8YMqWTOLN5BnjJ4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661332852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1RKnnPF6b/juTZd3cApaagofqkDY1gqVMuFzGgl5C3Q=;
	b=Gu/tffJs0Vta3v9Osg6TFJsx2vLvD16q2D4OBceKD7zhdK9KMs6xyZwmu0PUWj9d
	bj4zc96APFbMBFPuJ9cLPt72eL+2h/0Tg3rt+JJtSPC2+f0/up/b8RrZkT5bzgm2WTv
	r2PtohBJ/u3AN/n/FTdv1zfmVHG1supV1lgrfzoY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cf278f70-4b2596bc-5d9b-4850-a61f-8c1934d2020a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ffd6b75a0f7ae7c36a8e073fa9bcec894a9c16f4024a2850bbe3f97786b446c1
Date: Wed, 24 Aug 2022 09:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661332852

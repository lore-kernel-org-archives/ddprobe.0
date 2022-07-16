Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28DFE367
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 01:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657936612;
	h=To:Subject:From:Message-Id:Date;
	bh=VbB+4C0afIxFyZg+ihe8eNEPdop0gTJ9pAYGEns8IGE=;
	b=h164cZMn+cgqEL9wbJr7YE1V2oJNAFlom4B08rOx8UYTk7GsYt/7x2MghN6Bbr2A
	jL6D/AqnSw4dRx/y8lu8jAshxSLlBxaBQz9TB81CJzqq+2s91kFsWAsQshKsFN4ve9M
	YZmNp0/sKQs/Aal/2qhgLd2jzbQxpfTpRTkFVH1s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657936612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VbB+4C0afIxFyZg+ihe8eNEPdop0gTJ9pAYGEns8IGE=;
	b=ZffXXsCsivqywqo3Ue7S414TDuPZd7cJgW3SqF6Y/L1O8KJQjK/43z1jw/Tilror
	2NA9ZiF9urJaBIKsLENVzDeVs+k0XCBiRjovXbwZuZ/gxNLTpIYAA4JfXK9oD/r0Xf0
	gX5NaoFHEpuASFRspHQd9sqXqRT2PPRnt3706imU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018204b90c4a-709e939d-dfe8-4125-a93f-deb14782733f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4b15d6d8f5e41e9f2368cfa3471248667436f93795e725ebfddccde60b5394bb
Date: Sat, 16 Jul 2022 01:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657936612

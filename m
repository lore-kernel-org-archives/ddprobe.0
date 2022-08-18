Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3B877B
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660791053;
	h=To:Subject:From:Message-Id:Date;
	bh=9kCajmLOWKeJLNeadLQUa6L3OVMv3QfpfCpsBHW6Ypc=;
	b=Whp9beDM+ZbZ8zd0LSuC30khEDs6RGyDTO9txq5MTKVMnpfiPvS7YiOzNV/pEQnj
	7GOzAO+6VM9OIbjOpJ+cagOhZ2iMYjMcVKVUma7Qc9/FBOzTdZUcM43wlIQkuGDSQzJ
	pCL9NeDIWJ+VzFs7T4wKsrPrkv7eDJMR3FPRnp0c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660791053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9kCajmLOWKeJLNeadLQUa6L3OVMv3QfpfCpsBHW6Ypc=;
	b=kTbxOpMrkRJS2pE5hJ9m1iGsy+AlSBtSbX3C8oC8ofNJ1spcHc6KTWps99At4MC/
	ahqQZy+XD0Oq/3NToH0aoem4HOHnlNtlO0giZ+D4lmUzg/dXoBbm18Og9xi7xqIybO+
	Jx/UFOw0gcSJ9yCFubU47LMGQo5qPisUEWUPQfMQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182aedc5914-d7f6a428-b6dc-4875-8723-b735b3a8bb22-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8e625e3e24a0f9a808f2b57e79d6eec20eebb0f679a4907a57852fbc533d5656
Date: Thu, 18 Aug 2022 02:50:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660791052

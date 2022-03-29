Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201BD7C
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 10:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648549918;
	h=To:Subject:From:Message-Id:Date;
	bh=+s6rq3VcjKU/NdqkWjeH6pyq60pwBPwcQX47C+NMlCU=;
	b=QandCPtroYv4OOXwYue2+7FCr7voo7Nx6V5nbXd+cAEwod2iq8XM6UfxL3yd57pg
	Fu7wtvsDqAtsjzZHINf//4Cds/2I9hPNsOWLcHjfD4YHVvRjbva8Q3ACUR8xR30qlfD
	WPDJLirfK34hazIjSjvzN+tq4gy/Az5AjErHokTo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648549918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+s6rq3VcjKU/NdqkWjeH6pyq60pwBPwcQX47C+NMlCU=;
	b=js4/aTH7Cq0GUoF5EN0zXPKKbn0RKRvJrlp67U4mTp/psi/lxeps2FkdsjCRHMQ3
	zvaLmwG1hsxnMn0fm5zBqLDsRho8GtubV8+0SFkWE/tSfRKdcFiI6fJnVkpJ509Ga0l
	dcqfJA7rlT2wZWe2HtsU/QEx9k0lqjxgNqk09H5M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd53b767e-332e2d7e-825e-46a7-bdf6-9c42d00e3ed8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b0402b567d0238f80f68d7ce0b84fcb3c881889d5d87eee27d4d2058d1a29790
Date: Tue, 29 Mar 2022 10:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648549918

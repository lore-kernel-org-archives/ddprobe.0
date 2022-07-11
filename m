Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E7153C1D
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 11:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657539412;
	h=To:Subject:From:Message-Id:Date;
	bh=U0r/9F0XOBbaQ/vFepma178JB7APCGLMuTBXqImY//s=;
	b=dD+EBNeWvARKSEzIBiuqc5TUdflH7L60tBkAulRkY+zPHvqhj59rbA+rk5vkiGxn
	4MMDASW/Em3ugPD/7GsN96jPER/oQVDb3AG7lFAfN2yAsX3NBfpgtExPI1wkla5oQIb
	BJWmkZYgYiS6dgvdZOZ4C55XYgyOhnjZgidTZx/k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657539412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U0r/9F0XOBbaQ/vFepma178JB7APCGLMuTBXqImY//s=;
	b=QCZtVUtyGNFv5buSFq+P5LZ9HsZ2RYmvA7H4W6IFQSf0bE/derrYsNyZ2sPFRBfm
	BYBNdeeI1ZCLb40Ib8EfqRgtGTuetMJeUqcQxa70NG5sZt32mzEaJILeqzQJoKYTSdV
	DP1wbDmXqOTtdSoFUfhiQlPn0OwWWUTFUWNYpn14=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ed0c412f-c6de22a2-b8dc-43fb-8fbe-386422884f48-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2f12c6405a7b9913c443619da82fe617363dc5baff51b1377e14bd66b7c8929d
Date: Mon, 11 Jul 2022 11:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657539412

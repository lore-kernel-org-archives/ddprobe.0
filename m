Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81D2F7F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659426652;
	h=To:Subject:From:Message-Id:Date;
	bh=+Ir86K0IGdjdQF9f48fa4X+b67oZ94aKG1S01qlw6KU=;
	b=Jbd+ZMwjPgH4JMCkKSEfUKQny3nUSRscwh4GPJNyd5qop3UaXC02lop38jXsoZxx
	jPQAM0BIlTviPeBhQeNYDnnERYJ6PEmxfLvMwLSMVqlGOEeKzQWNgbo7b5pCWYdCrKW
	b5xOWfs8SN+a9jbjW54Hz00j+fQoAVMhxIBLdcy8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659426652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+Ir86K0IGdjdQF9f48fa4X+b67oZ94aKG1S01qlw6KU=;
	b=chCaMgRB4Dt9sNg/PW7ccus6WuCsCjufU9rS1sD4SeuaSktFdF6hv43cf6jJXlVg
	GQ4dQmhea2p7MKlpWwf0rlYJT/tCicmTPCSUbVQSVJG+Fxy79vulSjeMTCf3gsOjlk8
	1xKVHeI/LPyS/c1W9NUK+81UBFPsSTdoof5VVraE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825d89418f-868f1a8a-fd8c-43af-9c28-5e8c77b45803-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e9c2fbba1a020236c2f23465bab949ac31ae6e7d6ce55a62151a9602dc98e6e3
Date: Tue, 2 Aug 2022 07:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659426652

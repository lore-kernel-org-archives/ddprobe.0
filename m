Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 017DE814
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 12:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658839012;
	h=To:Subject:From:Message-Id:Date;
	bh=PEh3uquvhjdpw+oJUCc1mjF9mFUZ0ays/Wvm7Jq2LUg=;
	b=Etlc6kIDwsoA7ftrd7e1R/kMZZ3ASPHYVjbmRPV2NPBO3WqfImARpgVR1JliNY9Y
	e5Vh0PNG990IrLXeBfMlsz7KQBSD/CK81a5GWFZMDuS4s2KqpmI6A1raz+Bht++M20k
	3VP7SyD0+nk0FvKd+yvABkGnz+rJzmFgnhEIbJ4I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658839012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PEh3uquvhjdpw+oJUCc1mjF9mFUZ0ays/Wvm7Jq2LUg=;
	b=cqO8NTIiy0eKyaPltjZnePRqvuro+hCRJT2gsstq5dupZ8ykfl0H4BEARGEruwuy
	BombVKND++AxrYW/GGDXshJ2ploGlDH07YlqsFD4/uUJ4EVgcTwb1xeQAydF4m3QocG
	elWz1DA1rjeW4Gg3qOYUzeiJhDKQmMZXRk/mzN54=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823a8293db-9216b31a-a512-4e2a-8ce8-edd990924d09-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b890fbf6b0e9d08cb9f51bdbea402df8bc72e688e84c1fee0b56dd8bf570d6e0
Date: Tue, 26 Jul 2022 12:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658839012

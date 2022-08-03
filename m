Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FEA04A26
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 21:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659562852;
	h=To:Subject:From:Message-Id:Date;
	bh=D7n/NjRJhZHiWo1K6omBNRgM/UAajKZ2URjoJBI6PZc=;
	b=f2LqmQg0z3ajaZeCZIWMk/UfXwrPGFV4Sdaj35v1l4S/5nhNoByBhD6hhjMRPIKc
	5F111raaoyIIhskSN/MyCHoO5/DVcvAXdLfY+ibULS+1UAfqBP3vhbc1MH5YnVMbz7V
	9OsMwDqSr35T6K114KeLi0/BPi3pNe1O1zYvPO6A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659562852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D7n/NjRJhZHiWo1K6omBNRgM/UAajKZ2URjoJBI6PZc=;
	b=jkDRnTctt9gPjdZJUmTsZKuMgjCGH4N3beZwEK86JBk/Z/YTmgvGTZtrCJoML6xg
	GKGIS8XrLtxkZnczl7vo5D9qbeObzN7YM0E7sHFD93b6fv5Z3Cw8er3f/ZgOYilxtca
	WLbkAvrI4wkRcM1HpdgPElgBcOrMf/vmzuuwjjhg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018265a780fc-3004299b-5e3c-4255-9949-3c2cfbde7865-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bb7826d39eab00bec35ca9097b242dbdb47951a47a29b70606a1e6f8c15c2d16
Date: Wed, 3 Aug 2022 21:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659562852

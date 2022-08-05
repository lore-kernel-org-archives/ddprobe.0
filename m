Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6284C7C
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659702052;
	h=To:Subject:From:Message-Id:Date;
	bh=qY+6eD/6N/xQIjDkLVxJo1poRp+A3E2ieTLRbnLoxF8=;
	b=br+4L9xFC6yrSCdEWN8y42sZr6LT6h0m7SeaVqZAdzjA56astMluu0xuhvf7Vl4y
	TiCQtANqr1L8KqRuMcZJWy0mz0cVUk/HK8dUXzi4JlM94UM6B3P3L79bMDtdEvLLEdJ
	ZSoaEkw7Wn6maIJZEP3YghHXvb6wINlxwS6bu5TU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659702052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qY+6eD/6N/xQIjDkLVxJo1poRp+A3E2ieTLRbnLoxF8=;
	b=MrdMeFrP0K3JXYA13hHBi96uq2ik40NxyvbUO/A2AFXdYWyfetFuIPgkHMuj2tm2
	dm84Gt9l8yIoT7eWPsSSO1z7u5KNmjbzS5Q/QEq5W9wzuSwISd/4X/We3BhE/jr7VDp
	KxYJ6+1+1VsDsKs7dXZTdJBBhrRbGF7LLdgfJgD0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826df386bc-7c8d301e-2012-4ce5-bb96-d1e7cd6be65c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 33a0d50fdd8586cd0eb93af1e4d29ec6fafc7315485716e64ee6dbab860aae9c
Date: Fri, 5 Aug 2022 12:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659702052

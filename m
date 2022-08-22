Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 706C5632
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 04:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661140852;
	h=To:Subject:From:Message-Id:Date;
	bh=LdWM8y4Wvn0ORLvykq5a8b1qUS4dAIxNlYnyOScL1F8=;
	b=TK6f/W6fN/L8dSet2hhCdKxpOw9/dYnkJMQb7cAjwR2VducDEWmN4ggdsKZ7ONCx
	HP/VE+hwOcSZJznMesyPHs0GHSNSjSG6t5eY9O6MKhk/ncM4ruuIRSLQdfZTZbb0JwX
	XdE0eSLTB2xq5An04KZEHBXL9Wx4yPT1ycr6lggM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661140852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LdWM8y4Wvn0ORLvykq5a8b1qUS4dAIxNlYnyOScL1F8=;
	b=b0oXHphNUazISH2jX3BjAu7I3NYAb+zTom1wgmE/ByG/V5A2/OKvDuym1d4Y6jhO
	4PQ9Dg6/O0NCihXO7TZcW6WXFoSVp9S0hIPhJFp0T3yEDkbFT++JhjB85XOwmum9Yn5
	19vZ7z7qa7LQvHf8u7akDSurfvf1utHtP0qP/z3w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c3b5df4e-fba3a2ac-5015-4bbb-90cb-0f7e061ef190-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 75acc0c415404c9f44d5875b7da4be3e992f737008b7783a3461ba4900db36b1
Date: Mon, 22 Aug 2022 04:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661140852

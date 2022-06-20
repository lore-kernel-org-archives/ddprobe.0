Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D74B97E6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 07:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655711339;
	h=To:Subject:From:Message-Id:Date;
	bh=X5PJjFGKKTg4hAooiVSiydY25phQLDaot9VT/oXW90k=;
	b=J5HWUIJcU8n6pP7uMSV6tip4a1e7uVZMhIsdJDLEyz7TSJs2E1vvqeQH2GUkydlm
	kwrUyZgBTOkYKr8Yx4044+o1pPvUjNhyvm+y5+QYumdWmj46QCQARmCAWWNtYSVgUfn
	1dC1gmsFxCqNuHEg3T9D0k9OIM48YhHHWsVlKA70=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655711339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=X5PJjFGKKTg4hAooiVSiydY25phQLDaot9VT/oXW90k=;
	b=bfdtq9o8H/eM4ecP7uC20nN3S+JNhtX0YKnvXvJHJN30fTk6uoc8kBIQGudUFpBA
	LkzNF+Gpyk9F0Qbs9Jh0Q5vtMHrcLLznHlr+4Z5aMyvCQVFlmF+d3b11JhzZpseqlQn
	7l1HbA0+j9mWW9Q4jR8yT1MJqUziWYQUf0/FA2Jw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181801612ea-b3050a16-2372-457d-a5e2-6557d515ce1e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: feb88fe77139eb3c638cc982d00d9cfd7d5aa6983b591c981b13642a31cd8242
Date: Mon, 20 Jun 2022 07:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655711339

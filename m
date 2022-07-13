Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 765AD161
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 00:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657670812;
	h=To:Subject:From:Message-Id:Date;
	bh=d0RkOZYYY0aTHgcAPHpts0Tnxu3AeSZo4FQ/XOy3K5s=;
	b=aEYvav2JUgf32ZKuNKJZUawpiHzvuhMvg+Q0zuEBmcaiNEbeuP8dIlhT4hUCWHBK
	g6YRkP74L4nIk4Ld1xiLL6rNnZCpWvDVxQIuLHiozvaQJJE0B9a77lxY0p5N+d7+cL2
	Xi3efoU1FqmHUrAWkiyMPR1iZhBDUOWe0Dybao8c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657670812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d0RkOZYYY0aTHgcAPHpts0Tnxu3AeSZo4FQ/XOy3K5s=;
	b=S6/l1GcBxUv+1oVmWtc21zqEnZ5bQjN9FnUffCvuBdqJr3o0WEz8gbPLERf8gGnQ
	gimeMvfjZm8xMb0CDyYKcXuD9dwbKI8wrhrQs72C8qJolk6PdZGSvL2lCtDgWG3jz96
	LOUPVrKeiXBSIDll9YE/DrFeIf/iKoqr9rQ/fVYE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f4e1429e-f1c1770f-e745-4dea-9e18-8746bb0d870b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8e6f95f7050810cb4d392ce9906609b386bbf35e7e66a2a5063f749ad758713d
Date: Wed, 13 Jul 2022 00:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657670812

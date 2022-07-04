Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2475415A3
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 00:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656896212;
	h=To:Subject:From:Message-Id:Date;
	bh=fC14UWTBtrpB2LM5IhyI3hViDMHhzakpbcHxaJfpEJE=;
	b=GcrIDuCnaa72D9l7cEl9VOCnEb86sMEGCDGAdMY0uGiqqCrKc0ER7OIJYSpuVrs9
	wu+HfTjAy7loQaVD5nvBWmLOlIZFfwqkXaw17EkyRvqTialcxMRA0U9NEHC7ESJKUy9
	LxI4MBVZPcCZ1oaVhhuRsHJmCEKp0hCxAXx7nnvg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656896212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fC14UWTBtrpB2LM5IhyI3hViDMHhzakpbcHxaJfpEJE=;
	b=GIM/A41bHYwoDtpZfUGZQSOrF02lvBjcyYbXTXH+i9bMswNTNLHp8uKL1IpOQXO7
	5f/Ty7hWdXV/P3reQpLZgzcJC0a1OCcd6cjUMKmQvQNwruE0iFYMRb0PH8dSxcOZWCR
	RTZUMePHS5hisn7QcfCaNceXVgWJtFldEcszj1VA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c6b5cd6e-08f9b87d-cd72-4832-8fa2-bead4e93a1da-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 21fd564ca32d789e00f79feb7e0db94c77ca71505b101e2c946ef2c495b27622
Date: Mon, 4 Jul 2022 00:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656896212

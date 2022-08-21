Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DA591377
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 13:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661088652;
	h=To:Subject:From:Message-Id:Date;
	bh=RYQwXlJx60wbDA37VoKbB1T27km/hhf5ik47yvXRHfs=;
	b=geTHw1/D5NlYCE0T22l5zorwcOD109nJKDk9tv1MIaxlPcmm+6mp7cfqIb0HHsu7
	i+6TQLXKoB3YnCHuxVeEkGMSTk19GoqBvsx+5YLef+JYKDqWUWJFWiIgZCVNCX3Ij/J
	9xDo7QkJyNvA4zw7EMJrX1yhHBKzIskSnm1SWn3k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661088652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RYQwXlJx60wbDA37VoKbB1T27km/hhf5ik47yvXRHfs=;
	b=iqmwgFu+eFevquTLeUmF76muN56Pnzr1Qgw/vQFD9uBsxPhboXu8JTcihqBbCIS8
	aUqlXLfDD53f+8E4yqzSkGFubYB5fyVb2lVNE2Q4pTQmSEkjzrQ72eU7QF+srJj6xAH
	ovvvJpM+ixfSLzCRWvcGSlAR1W/R6iQ1CQcEvqHU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c0995d39-5664c8b6-368d-4074-82bf-47854c80e2c2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a7b25dba0e707a3dd87fd362eca94e8aede7789d5f9b9a6c50b9a14a362531f5
Date: Sun, 21 Aug 2022 13:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661088652

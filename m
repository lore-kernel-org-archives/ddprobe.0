Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB223D98
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 18:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656353812;
	h=To:Subject:From:Message-Id:Date;
	bh=a0T/Jr+GgEJAlovUzqjeCvVGpXfJrEkfM+i2swynAPw=;
	b=WCDZyH3Q8aS0lmA3oO57u3RhkcElGY2k+Wjk58tI2bWnxA2RcAvLy73qqxHFxBKJ
	6297IkwDS0FMPfS9DGY+htM7bqTBJMwCvd3hWola2t2CJSAkmKzeVTWT1RocyrimvC9
	1uS+7wIdSTxqq4YZUlnXnYVMd95Ig3yeGuEeCkqA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656353812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a0T/Jr+GgEJAlovUzqjeCvVGpXfJrEkfM+i2swynAPw=;
	b=Wfqd3M2GO4XRj8Ycet9nPF0yZkNzlXp349X5NkiIwcNna6opFLRXqTWlmTMuEZgd
	ZmoOI99YF/c4K2ic3DFiaO5PMny/Q7tVKHNVi6JqxenCxjFiOYOYsEePts/+Mt0tbnL
	FtGVZaQSVQCUXF3WbjGMO0EFnBR698ODiO+y0AsI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a6616f34-0060e059-9a82-4771-8bb8-f4d9b77bb561-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 05efedb2b36377304ad6cbf3a0f6bf17ab00af088798f39bc8bfa7ea6c6c3f13
Date: Mon, 27 Jun 2022 18:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656353812

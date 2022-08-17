Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6056D3C26
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660729852;
	h=To:Subject:From:Message-Id:Date;
	bh=5KMr9gXgxfE4fpe18Ufv4Suf4o8q+J30Dsov9lgAAHA=;
	b=Qe3vzmVO0fDSTQJLTBVqTrTeRWqvCNJR64SVT8bZcJT7G0gqhKO+TC6zV6ZcCC2c
	dOmGhTWgZ996bW8atqFUoPuCrqVtnQNCRFskCTmh5rPmkYz7qFylJFU0JsQQvKfreT1
	JoNZs8eWYohMEweKoPeVUVX4Pd9l4V6dWbQ8MaWU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660729852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5KMr9gXgxfE4fpe18Ufv4Suf4o8q+J30Dsov9lgAAHA=;
	b=JFAgoOa82BBQMcUwNzs3GcxlP4zfFMxIXc4QFGlNCX75/qgKqJndu5JRRWe5wZ3w
	2FMvE5mC84gRE32Y1tnWGuIOF5j4I9C22sSg5JisbBGMLezGFAVCerd8YcHwo5l5W4K
	P/s7XhXHisi3Z1DNeVDmo+d5hKB3ioQwH5rp54W8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ab36828a-17a474d0-eb7f-4a61-8f37-4e890604cbca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bc4af5b492eb22d3aaaa572f67866c546e4e44e3a521e7c2e6133aa7920222c1
Date: Wed, 17 Aug 2022 09:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660729852

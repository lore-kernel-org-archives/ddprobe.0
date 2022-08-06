Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7BE97C
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 04:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659758453;
	h=To:Subject:From:Message-Id:Date;
	bh=qtz6h0+Fhph/wrvpznvJNVTJgf+EwyrIrhn3yC860nw=;
	b=YtIa03LJPgWR9e1AqwVBiGbgeN6J6EaAREJ/aUWugPORv/UGcRbWIAfO0ZK57SlZ
	9ErxDBZTbi8J6dJYqG0RM0NTbFaa/Lm8oDl7YIittpvKpT6wlgN+QJ7Bu9Ncu6qPni2
	PSuD0E8q9PLfg1O7ej9aQNtKBL+DqrMVIOucxtdU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659758453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qtz6h0+Fhph/wrvpznvJNVTJgf+EwyrIrhn3yC860nw=;
	b=NPzUNidy8O3RlsJFTWGzJHquC+GwB4pSdrp9moeFeST1KMDoSTyqRG5bOYfcs/Qt
	hNuVv1nNsRAfB2VNCSv8DQbRqyF+2A9ppIoRjWta5QjSkVs/hPbqshbKxTneK1mWDNH
	IOr0xS28iAsNhisKfjDWQchBwCNnQRuLOv9BsLKw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018271501f95-2a5872da-ba0d-4f54-9f81-677fb8df0448-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a283d470f2171b6730640279a69060a5389372608645736e97ee4ee07ccfad41
Date: Sat, 6 Aug 2022 04:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659758452

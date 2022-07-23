Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3D3F7E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 06:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658557012;
	h=To:Subject:From:Message-Id:Date;
	bh=Zg6XlaCzqjrS2MZmWYTI4vYHjB4NeYH7/1iv0xXf7D4=;
	b=lUqS9/u+X9DNFqMr38uhXI8J6rlJTTLHxdoIs6X29Hr/YLkUjOf2b/omPfyEw69+
	UYS5qjZBM12RckuXvHM+I5jCXnhEcL9ji4QME0pMRKMmS/ZtONGKwiSMUDGF0vR8QuT
	8KRt2D6ZQs1GX4OOFLVTnxNXWI3ZN1DK0txZrYgo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658557012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Zg6XlaCzqjrS2MZmWYTI4vYHjB4NeYH7/1iv0xXf7D4=;
	b=S9BqCIewlVI/Ifuguyfk+UZSqb7e0nsGxPjFqUY7Fi09vH0c/wE5gIfA5HFYOGgk
	+4oGf9kVzGQBdB+bSDPtYaSWCdpCzudIPqEncpwHZ2EIs4wDKLcuLpHzRPxOMnilsmt
	kprlBUOlcXLqXSUR38YQBd8xvHWrH7M0PgDdpYBY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018229b39987-61e56964-3d60-4615-b791-0fc5101e6e12-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e8651dd66064f18a40c9e7c70c351b794e65adffc213a4cc6f4ef2332f26b056
Date: Sat, 23 Jul 2022 06:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658557012

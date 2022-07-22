Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9384A2C
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 17:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658510812;
	h=To:Subject:From:Message-Id:Date;
	bh=UD3NDrlJfkLAcR204Q3GZCX0myqM8WnxqLrgwEgfP14=;
	b=aSS/R9VPxwLuRFdaibPraM8kdFhvc12ZmunDjJT9XWmdR1K6hyhAvk2gQYD/qSvr
	Q6ldqLbz9aE3iljd+TsxtAruHcazrK1LEsNUhGZirsQKB5VpMZBKfUMiG3P+zkPzuYB
	PfCgb335BmN6f/F4JQV/FdPSAzyAhKTz+RWW3Iuw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658510812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UD3NDrlJfkLAcR204Q3GZCX0myqM8WnxqLrgwEgfP14=;
	b=VIpsAf9LgAI963Ys67+TvPUz3Om8qwyWJHwn1JIRtdf/ZovJIdAPRgd/OKgPYRGr
	3VWiBmOHxcgKMnTTijOHBniS/hrx9mnbgNeRS1m0B4Grmnw1NsXO9KsvlPWqiceU5jZ
	n31ZZnCy4uMYi1zRIXlAFpLZ49KksPaqPW+9bfkg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018226f2a4a4-8a8d8037-37ed-416e-ba15-0b24be144182-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8b08c2449b5da7a49320367d1890577fc07c830fceb0f5aa86bd98d0b0961219
Date: Fri, 22 Jul 2022 17:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658510812

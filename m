Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 917D32F2B
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 23:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660777252;
	h=To:Subject:From:Message-Id:Date;
	bh=FzrqJYTEiXrLzdXMdKX8eM+2yM0chNdukjti5jCifWo=;
	b=fpnw6+dFZdPxZ13NclxddYpy80FjJDlRnCM6x/C5i3FI0h1PAgv9AMGJ6n+lRFQF
	SxISb0W5C2OFkQZhIVuyE2o544MB7sPymkggt2OrMhWd3zVYE9JSGC9gzopFv8VsHGY
	k21LCKSXz7fRfDpla7Yb8LlmV1qJVLCwKBrTEE6I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660777252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FzrqJYTEiXrLzdXMdKX8eM+2yM0chNdukjti5jCifWo=;
	b=ZAbPwMMtFIf4gjnPbwkJC7Petp6m0PItvQznCcN1tbDp5GgGJFzxtRxYa3UPqQxh
	dzjXqaeMD4ge2r2SCcN7tZ7ZN106ES8HZqpfqzM9/n6bAeRGBprpavWx63TOAiofxQ1
	LHjxrXH67IqLhpmGdSD3vDoekbGAm86VIrJ5m7bU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ae09c704-54ef46b1-a5b0-489f-a9e1-c30e347235ca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: efe01bad24f012a4a3e13478fe8bace818187cb388fe181f15e00123c0b18eb9
Date: Wed, 17 Aug 2022 23:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660777252

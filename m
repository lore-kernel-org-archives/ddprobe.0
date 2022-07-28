Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C0A1101
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 10:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659002452;
	h=To:Subject:From:Message-Id:Date;
	bh=I+BUFwv+0u/Uj82odD7MdUWECVguPSxqVQHhPFR67kQ=;
	b=DJPNRtM9wxObxH5dR3fxleLPJ8l6Dllu2qN6MYV7bgd/IkRCLeDKl4KpSPwd3xjF
	F1SWa1RVzwiYmVu+w7eB27HlWtJGBK01YldwLjeEC9aqXPV6RLSKwKiKDF371yMf326
	K4iHeVZm1feaDMOJdAlN0oMg58G4wVSiYqRl9Apw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659002452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I+BUFwv+0u/Uj82odD7MdUWECVguPSxqVQHhPFR67kQ=;
	b=j3KD2KkDIPWCGPbeA/0naRVWH5jDa5ywoEuTvwTMP2WIG/z2n6U1IRKL8wuL0T3y
	ZtdhmFlYT5CcZ0a/GLklNydlxiq+VSTuNtRMh/qKJLIb5ZLwXhzjqThjRssvIhBrHlE
	iuu+0ZoIjyEIg6wyjHtQ2gZNDUKUTB8V7BIgxD6g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018244407a21-3549546b-ac06-455d-9d8b-47270d4d4a9a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dfb59cc3d3401dfaedbc75638f61274f545d5ffb061a7ee122f62106f022e53a
Date: Thu, 28 Jul 2022 10:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659002452

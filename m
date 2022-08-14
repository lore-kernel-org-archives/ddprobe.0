Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6079F7EE
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660439452;
	h=To:Subject:From:Message-Id:Date;
	bh=gGKJvtnFNpr3UkgvyeGK9HdFMq+C9rfCV6BJ3d+63Tc=;
	b=X5KlbUlLTXik4+K6rLXAdf1d8XSV/E8GzPAWapyoAkYGxVf1Jz+IxMIXi/nc93VK
	MlfwxeqgYvA1sVn4cV10GWPh1qcjxtIg7alUngEHwz7ewBPreaghRuSV99nfxdPLyNC
	hZX4B62tkHjB/+aPMhMWA+kjZDmMaUS0c9gfCV6k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660439452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gGKJvtnFNpr3UkgvyeGK9HdFMq+C9rfCV6BJ3d+63Tc=;
	b=X4Oas24UBxbST7aXhaTYMpImBHDASzX3d46ufAY6MLRTHJsMPwwTr4IUGUeTkBg8
	S0FwUW616z/IehSkkTXscxiI8NkPAqTKlx+wDZWnJhExBNE9gdzExUiKorYnhgnTxkI
	zS1f420qJFm5WJSbZLIpQWsBQUXJDWJ2w4Nxhx1Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018299e75b8b-5e9d7747-71c9-4473-a84e-8d437ed46474-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fb88fbf28410a16b0f2024e484a363ad45a7dbe44a0dae4ae96ea43ee71bdaf2
Date: Sun, 14 Aug 2022 01:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660439452

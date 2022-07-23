Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03CBA7E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 21:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658611612;
	h=To:Subject:From:Message-Id:Date;
	bh=gS2OfqkV8EKqTWZmjubmnBUw0IvJufb000ngovrtdRs=;
	b=X3Su4lL5zkhm2A2FfDtlKZOsaIpQIzBtuAcjqJLrnfGFnJb0kL1DnpFLcnDpDkQA
	+Rbp04NusrSsig5HQubMLvMsfp3iGQ3csEuHlKLXXqNh5uv8XJV75uLw2n0IyLuVXpH
	52u5b1bbpZOokEvaUnm0CiwpC0TDbYLHGnpSKUYY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658611612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gS2OfqkV8EKqTWZmjubmnBUw0IvJufb000ngovrtdRs=;
	b=F+UEq3nB4s4GytJFRXxpSAu64w/Cn/F9rP8n+ERdpwOoXGONO769fV4Mj9kKZcqb
	cQy0m1ELM7oRo8kQ6FRDqW5t9up40SpoorcZDKsOkkJSKJrt6UksG+sI8OUslF5rEeE
	7Kvb9y1roOWWSHtjbV+FBFz2meD9bc0vKw3C1ZVA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822cf4bab3-bd82ab7a-fb05-4ce9-bd41-ceb1a26cfd3b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e3d3809c08cdfe70afdc261b7eac4b7236006af3f70e1d7dce30ef2c8e835538
Date: Sat, 23 Jul 2022 21:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658611612

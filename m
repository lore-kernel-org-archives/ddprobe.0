Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51C2C624
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 08:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649407558;
	h=To:Subject:From:Message-Id:Date;
	bh=Sk8khse5PAR4jrj33UppQJqykec0a2eGgK7infVH+D8=;
	b=G/rU3nDVmN210X9gTtGmQoH6M0gI8yHxWR6I13CNNn34EBV0Dg/Wb/wo88fHzn7M
	1VXXUZWR87TjnFR5akVo695Y6B6xHU9CAFxVgmGcWUfYJH7bPFMqNXEEDubU+sd5m7t
	Xk0WqkjIqDrgBPwNvmYjE1EYigSXaanGxKswPSkg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649407558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Sk8khse5PAR4jrj33UppQJqykec0a2eGgK7infVH+D8=;
	b=YrQoyO/q5yMn8/0zzfH3Bl++j04r7KwwZbBSdLi2EQ+XIcA+LerXBN4PFO01UyDA
	Okv0xkHvtqGBBZybb18Mh4VxEdqXfv8mbpyC6MQLaqcLir33o7KtIzTVer7W77p6pw1
	BJnX9m/aXzbEPumuiIb48HBSmAgbkt/d9ZqfESGg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180085a0275-806d261c-ae64-4420-b60d-a232ce54a933-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: adfd691c30101293aaf8a90fa9ca49011402126e5e136fd68847ae3680f9a164
Date: Fri, 8 Apr 2022 08:45:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649407558

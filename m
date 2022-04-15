Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ACB32F50
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 11:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650021898;
	h=To:Subject:From:Message-Id:Date;
	bh=47OoRTzD8ZR3X3uaVPEcdwk5SOuU4yPbP95Q03FIvzc=;
	b=GRiYPlXozkdZetr0MLzK1a4URaaHDH+zSLq9NKiFe3U+KLaV+qedwevQnwTxErNz
	/upZxm4UEm3fDFG8ws3p86WkuXw1rMxAQfXlox23Swvn3xEqgRiDQjE5KnfGfnngacZ
	UwEr2pu7PnEGnS3XuEFD92uPtKjLKM2ICn5OQ0A4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650021898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=47OoRTzD8ZR3X3uaVPEcdwk5SOuU4yPbP95Q03FIvzc=;
	b=kJK2SCg3PsXI4A46rCXDhB22BDkhGg6jplwz4M/kZ8519VbWE1w8G2LPBei+7+N0
	aEj9r7PdbBBFner1bB+9ACVlWm1Tfy4j3UHJfPSUNWMXk28206347+Fwjv9Te/EPDyt
	6+4gL1IUuT0FpCY3zBm8dLKLQX+Zo/6O4tC3SWuc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802cf81841-2fe35fe2-8b02-4e3f-99d4-9098e0626ee6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6c2c64a20e8f08bceceb62cb0d50f0f55a832ffca4d15f66438f22ffaa8f4452
Date: Fri, 15 Apr 2022 11:24:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650021898

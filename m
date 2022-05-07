Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496AB7F
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 03:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651892458;
	h=To:Subject:From:Message-Id:Date;
	bh=OEgolKVnvz9KN4XfTqpb7Jwqu0W+KxaU3IANk0kHeeM=;
	b=PFmO0VtHuHWvccwNZ+Uc+1wAPe+xg7M+gGqY/o/Sj7PnTvBQt2yJyI/EDWF+o/94
	qcPed8KJjr2I8ZmcYsQB1gdr9WdM34w/Hv+O1HxdbmSfbC6sBGWffW5MDwELfc3m1a2
	1qksxu5izW6YkN0xWY7/sjC2R7PwoCijDnW1aEQc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651892458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OEgolKVnvz9KN4XfTqpb7Jwqu0W+KxaU3IANk0kHeeM=;
	b=hH57QLIXRhKEB3dky55/V1pxB3v+NTRQCW/sp0wHO3AKD3w/tLakQfy3AwK5XdA7
	/+QqPjcFwmImpWxH4RFrXX0pbufsEQA9hwc455AE4cBv9U8I41NqLjopckvHr/q2w1q
	P5p+NSdcw7RqEeUYwGQqfvfJNJ4Lh7VvnmANuWuc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809c769335-530ab414-9c24-46cc-91d7-a1cb9912accb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0b816f55c7625804cc0df186fb402514795af430c8d590be5c3b2aa62c57b995
Date: Sat, 7 May 2022 03:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651892458

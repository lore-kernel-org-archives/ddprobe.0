Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04CF61FC8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 03:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654486079;
	h=To:Subject:From:Message-Id:Date;
	bh=RGBDNMLX39T8NOSeAckxTia9fSyHz/Mlovo3PW5Tyic=;
	b=O8Fpu+ANXhXVe9s0n8V+gtLWgXTk0pb3SqH1HsBiAY9U1CqbORKq2ZrkswMtQ9Vc
	Eqwl3Rh0DHj/Bo0050HIgf1fyGoT2zPBr5gD7m44qaeBLMMZnQV2A7Wx66hdBx1uLdw
	IO2qEtGcwwMegr6ZO2VMP8twLsaftQsy1zZvU4d8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654486079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RGBDNMLX39T8NOSeAckxTia9fSyHz/Mlovo3PW5Tyic=;
	b=ROb8YcWh1TnaJAUGAwDWEq9UGLqFKTah1lyaf5KhQRCMoYA1OGJ855PMZBjA0p2B
	5xXjGKcoYRkPpNIK6A6SPnTBikjrfr2ajupBXHcPWnZM8p+MDZ6J2rxppTxnxG8uZke
	t+9sb8ACcqP2JaRENdH0GUb/0Q98DdTglcSc0Gl8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181370e173b-51a39581-8025-40fd-a1ee-d8c9a4e00bf6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 51f9e0dbc89e9f957d03c08918fef106d59f3ccf89c459c5209b5cb5160fabb4
Date: Mon, 6 Jun 2022 03:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654486079

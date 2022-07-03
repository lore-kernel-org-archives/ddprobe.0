Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A44B23C0B
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 16:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656866213;
	h=To:Subject:From:Message-Id:Date;
	bh=BAMSokrXcPFH3R3HPpxI0sbTGrKLpdAjAFt+vBrmZ6M=;
	b=a5g3u6ljS76LaNoPv85SRbLkxSuto/8hmoaKAkjsIVBvJOUAg0MLFbgvMBbANanw
	aqijMMLXeLepMTRhil2J9sv83Ynh4O4lw9VJMcOO0+sa8cV1OeBcjr++39x1J50a9Xm
	wQHEM8ZJou1KZdEjWsf6b7D71m38KL0f3uuI2QQ0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656866213;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BAMSokrXcPFH3R3HPpxI0sbTGrKLpdAjAFt+vBrmZ6M=;
	b=fj4q3NKITI6xD4aoRO8/6n7CMbXHv/0BBZjwpdB6hBsQHFc7CVcLgGmJN/gNBhBN
	K51dEDdh+kNKD5QLrEEQ2Y+RB6oiSTPiberyKn0owejrtK94kZ1uClJKZpD6uJxY0IQ
	Uo1vC/a+7lR1HAPVJmomhnBuGSdwHzab3IP7j9YI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c4ec09f9-f1dbffa1-a33e-4969-bced-c6b93aeeca42-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7d58ad27e92acb8c6b25726be7819720686c6b40b80e9a59ac62d50fc06dd061
Date: Sun, 3 Jul 2022 16:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656866212

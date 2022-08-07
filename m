Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AA892F26
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 00:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659830452;
	h=To:Subject:From:Message-Id:Date;
	bh=Ba0VtsqEhHUyfNE58nSE8cXLjjpORkg14fDKj6P4vpU=;
	b=cwzOD2n+fGHdInkqriOkSkbR6eS2Yettt2Lvi967+DaBbXJ/XiCZ/wdC/G1rEikX
	gcamhgvKKNkWKbFxMNA9ONDQdRjo/hQaiSQOz45609OYnOy3J+9skFxR40tthjdkKq4
	wvHVQsMH443EyVesd7Fxz2qtF60ay1ill7N9gzOw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659830452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ba0VtsqEhHUyfNE58nSE8cXLjjpORkg14fDKj6P4vpU=;
	b=Y5oYo23X6kI+xoSP7zgQl4G5A8lwdxnxKW9fFSHSfamLo0wnpyjnheYlyL2vPh0s
	z9PcjYyWINaEzuJ+JPlSkcIt7qfCFtF/f7/mZa12ISnWksL65I5STYttCbiXq8ve4wf
	4Ptr/K6wq/I86GZSnfAS+XRfIXQPbB5JEy38fIwI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182759ac140-b23553d4-9aa3-4e62-ba3e-6d27bc5b9756-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7e10c2a7ca64be21d86bcda127460c35a5aaddab8ed36be84797a80718b160ad
Date: Sun, 7 Aug 2022 00:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659830452

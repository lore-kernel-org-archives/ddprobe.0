Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 023F128E2
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 15:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657294612;
	h=To:Subject:From:Message-Id:Date;
	bh=0Y7ZMMKcsshlbhVL9KNOpYhS8p9dPnbJazXsLZYgsvc=;
	b=ayNhs6kUlTWPByO+367CUUOahp0RAEJxy4NrAEpJczzkZJJkF87E/Cy6pMeAnPeC
	8JEz2E9sx08bDaEEwZ2rTgFsTWOkU1hkhkuRfgnyIemqU2inz9dK12kFxAlnXkxZKVI
	ZjeeQ2b0SyWMYGb1vLg/m9fLOY1WfYbGdJKs+3J4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657294612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0Y7ZMMKcsshlbhVL9KNOpYhS8p9dPnbJazXsLZYgsvc=;
	b=IxB3TdH5Jd3QZEgkMwcwrxPu/Rggpbwal1u0Fe4cg40NM/zoosezs9vAj1K2uqH8
	DPfWCaW1psJIlRnzb5+4iYZ8t4e2TooBjpbo9Uxji4Hh+QSpMjgohZ0HQx3qvZS6PMO
	zKZUbj0dwf1qM1mnpT/PuS2BNOeVfxZLNXIaF7Eg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181de74e72d-6505941b-86ae-4a8d-b64b-95ce09e3eb25-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: def57e34d1fb0d4cd74bae44ba23f72cd14e7e95d0b686f35634476aed2d842a
Date: Fri, 8 Jul 2022 15:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657294612

Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 152211FA5
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 02:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658370412;
	h=To:Subject:From:Message-Id:Date;
	bh=giGPt8OwTr6ecL3/W6K4ExsUPq696OCZz9RddHZCuZs=;
	b=DY6P7c57IoCkWeR6YfQhPTuu3S2yMC9xW3AuA5u18XrgAW41HcCTPE6hfKTqj0cs
	37G+wf5jmz8g0tvzx3W3pKT4gkE52gtkm3ZH6r4ZiZvCxEhnzE0MSh6ddTmOcxAaQCp
	MegUHfwTTEqbFYea7QZkoaw+lby0V/OuUkKlVwgU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658370412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=giGPt8OwTr6ecL3/W6K4ExsUPq696OCZz9RddHZCuZs=;
	b=OZqrQLZnYwbn57Sm7qdoHlRQ5PfBTdGoCoMKWZdifwKNdkhRIgQ4W18pqubv+oUc
	fdtjF3ZagNniWUBRt7pWN48LaqKlTr3VUmiv6heeC6dI5k2NSneaDPE2eYdhRDRCNJA
	ASQBkWKKYSJ4WuR456pscJ/4ULRtqkh2w7vIYdDw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821e944ec8-2835ed29-9f6c-48ec-a0f9-327f34fbe9c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fe3ce013d67562ea4ced679290b465a64bef71a94cebb125f25d1e2b6b92815e
Date: Thu, 21 Jul 2022 02:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658370412

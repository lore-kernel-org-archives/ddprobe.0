Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 717526716
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 17:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661363452;
	h=To:Subject:From:Message-Id:Date;
	bh=EH7wNvMpFcxs10bj11CbpGjMGVikBs1VZv6FPqD9III=;
	b=eAnyKYwHwO03gBGV0YubLRnGVOBUqt8kxnO47YVHYGfJsUfyj4M7ZTjICNRn6zhU
	H5He0AaAiIbMdnaUjFhxvC1ZEaKHcDmxuKOUZfTa/dX0qCWEChQiYiV7p0sR4+KKZDW
	GvLli1pPOMSTzRPdt2LvkstG1+3q91v7vF13Pmp4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661363452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EH7wNvMpFcxs10bj11CbpGjMGVikBs1VZv6FPqD9III=;
	b=J31qpMw6rR14sSB/0+eEHpmhUYdSMBMuumEJ3Z5juQnCRFAQispB9YpbPRE0E2ip
	03yUsXwk5NcIis7N1MIMwzaA0TPTrhTLxNa3bmJx78WWWOXGPdMqSgEDPxoidZTQIjU
	rXzmW04N0PGZBdmHPyTPifsElA3GZvFe8tDD5LmA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182d0fa7a82-830d1283-b574-4eea-9cfa-637fec0c062c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e6fda72486bdaacf734ffbb0c8394e51fe495e93ba136384673868edff5dbab7
Date: Wed, 24 Aug 2022 17:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661363452

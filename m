Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2673220E0
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 02:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651630978;
	h=To:Subject:From:Message-Id:Date;
	bh=nQayhFmo3jCVJ7xbkg400Y6oN+FK6PLEOc89OA2kKGk=;
	b=TnG7NUmlXBPbEQWPuwcknoByFdN3oHmZp6NQFL9nrDoDoow3tqd95oQ/uzIN+sCE
	ORQLKNCb/ioK7tD7JL4NYZoSqvU4yLVyAGfW6SzSLWicuu0FaIaV04VSSWu8NyTUxG8
	1270TsWBT/vaF9dXeyov3+4HtcqfaMh/qVKn9R6Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651630978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nQayhFmo3jCVJ7xbkg400Y6oN+FK6PLEOc89OA2kKGk=;
	b=Wew+mM7w1vI8bbHwIVoibqLGR6dz8hPsJQM+OmFaec+ZpSrs9FiWx3EqPmnaEnG1
	CfG5Ei1jHGblv4IkggdFN5PZg5pGA8IeEtDvcmmXjsjOnnKBaZmc8J+t4LNogDr9fbY
	KHgesVdNyKym9gyPc+5NvXsL4E4ck86dCVZIL9W8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808ce0b4be-0810c170-5074-4ff7-9827-87f3bb246f14-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 37ec73d1dfce7ec3abcaa9687f9f3138ac9793b83d8417b5349f39945f5e91ce
Date: Wed, 4 May 2022 02:22:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651630978

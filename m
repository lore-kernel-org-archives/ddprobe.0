Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306687C
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659816652;
	h=To:Subject:From:Message-Id:Date;
	bh=9HRzlUeU7QITN/oxhyJvCYp6Sls3lAeyRkxPVwW8OMo=;
	b=gwDG19AOMvSzJL0FzdsyiIYg44DJg/gE8/pWHIW5NCYk0/LWJuBtbYf3Pokm/RtL
	NLQ9eSWOHUGV0jFPz3dtNOmky/dsVodVi1ELXWdWUYTI8i8guKnOt48oVr6tW6g9QQD
	tZgDnM+6XXspn/tPRmo/2YzGOGr/MS7KB8pzBs1o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659816652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9HRzlUeU7QITN/oxhyJvCYp6Sls3lAeyRkxPVwW8OMo=;
	b=RHTR2ZzPymW6kUT1fZDHGlZsyRy65eI4Urbk9XmG68DIurpxGscrpwpgQfpNUQe2
	zUTdfVMNaSkN/bTuyv5PmfEy6cJNYZRLFTkF+ajZH5pCYcLPSXs+jOVLB+F3yildPou
	DFgQ4qdvahgV5YKZRwHjpRTvz3t8ooljjZQ5nPIM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018274c82f07-3cdea97f-ca3e-4319-b2aa-f2350a34cf7f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2c914ceb60f2f05045a27110c5f526329f6b8af37f171114bd558c54c62cf1ef
Date: Sat, 6 Aug 2022 20:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659816652

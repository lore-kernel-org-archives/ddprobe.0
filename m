Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2507C
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 14:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650723238;
	h=To:Subject:From:Message-Id:Date;
	bh=W955m7lEjGPJb+PdzsuqnqWyVV9RcISgy7OepM1tuW4=;
	b=Ncr+Ys4NAGsaxhO0YZwJIdXGqoedAT7RLvDmq0Qkg54uKiwsz6rRfKH3J3U+5EMV
	siBGxBJlciV3CzuLgbVB6FMGmRRvsW/vCB+zQcvpe3QCS7lqoXOSMhMIjp7detNsENt
	it6A71T1Sj/Vau8KyG7E5SQb/eOhYnu0CglruMP4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650723238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W955m7lEjGPJb+PdzsuqnqWyVV9RcISgy7OepM1tuW4=;
	b=Zmi6Z0f/hpVOY6+/pprhdB2gWOYe3OwVkVGGfqZF2Wdc8tJTRt8mnK2jwK2HB5my
	EvAUS4gIOTFbGFYlYYL7YQO8IVDDaQJ1Bql7xE5wh5MIjYphjx2gqPVLNqFJp71vl3Q
	gjgYWGzZzQyJzSOgTgnujJ9tW8JZzz/R6EVurvoQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018056c5b1a6-f00b9fdd-715a-439c-a6ed-dd0b853ee590-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e449b9f72b34384390c3d096af0e52304fad701edae81e5cfb19deb97b0daa0d
Date: Sat, 23 Apr 2022 14:13:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650723238

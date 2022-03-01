Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 919715CA0
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 15:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646147785;
	h=To:Subject:From:Message-Id:Date;
	bh=GS3aw63zWX87cfFHm4YCWY/qkzNPpqX9o+yM2jgEKzQ=;
	b=JkopcRFLiGOKXYHBrHzsP37Jwvx05MFt4SbarswkvhfwywIb978UusahlxrAoo/a
	923lXTaRyKWme0G/aAjC6uZlvZYEuDd98rdhqJYGJittefj9zsiVgbIgFFiqNJ+b7x2
	QAcX197odveaNzx82HRaT+B7OT1CjHgw+U588flA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646147785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GS3aw63zWX87cfFHm4YCWY/qkzNPpqX9o+yM2jgEKzQ=;
	b=ccrh4g7JjgogWYTquUopxJBws6LcARGBgmcEH2f+a1tnWNvGGMaC9yO+i1dDoAyn
	pLmgtuENwW/rAzvCPuok8w6VU7MZ69qAFAA38Cv1RomCjhVHccqE8x6KXSk89GfXQ8o
	3txBMdEUWcrATUZ6+oTYEG4QaZ80aXjl1Ms0z4UE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f460dd034-552de782-d716-4f62-8f04-df30e38fbf84-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7a5c2c0e3e73c3bd47e1089c6e60c43e1fa578ebfc9394f62dad3db7261633be
Date: Tue, 1 Mar 2022 15:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646147784

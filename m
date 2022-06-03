Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9D39EA1
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 08:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654243379;
	h=To:Subject:From:Message-Id:Date;
	bh=0YeGI8VCYBreNLgHb8FlpZPJy3l22gz7CtMEIteRP38=;
	b=kSCe0qWwwD6FIe+EiiRnq8flHHIII8lxCxO7amH+1Rr5JEAbveyRGGdtQopSFxrn
	DvNp+QnhwAUNo/ljKkAx38s7Oh6V7lNMp4KUpP/pp1yGjUjPguI05qyfuMrmARQx7vT
	aHpMZs5KzOL5cz8MbxvF0TdCWa4DACozbYDIqNf8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654243379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0YeGI8VCYBreNLgHb8FlpZPJy3l22gz7CtMEIteRP38=;
	b=Q1tr2Dj/9AtTgy5IUbmjwR+5d/oolyeA3FXEZMfyEI0D6WaplZPVE4UaaAxSD7z4
	ClVSMAIXq83vOzCbdPAsGb/ZQkdaflWuZqjgEKSvMT3cKWPQ0gCYPrgTD3LjqbsdD8M
	qlPkTowjXSW9SNLzRwaCYn/5D8FmcdT98A7PXIH4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812896c804-87aeaada-8342-4836-a580-c16dfa718c24-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7c7dffe135d43e349520bf9639e67fc9fc714b70c0056489f4e86b7f3289fc27
Date: Fri, 3 Jun 2022 08:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654243379

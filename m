Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 473A47F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659339652;
	h=To:Subject:From:Message-Id:Date;
	bh=7p7ndpFONadGZBapX8/xiE3xS0hZMrFYyKrTiUxi5hc=;
	b=POepnHwFdp2Bwa7FZUberssbHFc4OD4vKyz142wvvzZFD+gNFNOHs2oZdbfFNnR9
	pt1ZPxw9Cp46MaDsCgRnnQlHK7zjp218to3PKKVXb7EqXkFkp6eJZ6vkCntqIbuwJ5q
	EpEHzIicf+Yvkjj+hkMOGVcoF6PMqDmuMOIzCFSg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659339652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7p7ndpFONadGZBapX8/xiE3xS0hZMrFYyKrTiUxi5hc=;
	b=I6t7Vd/CVbnW3thZVo9cUO334nZIiKgYFtM47StJyEJcA8Bpm6rOmraRHJ4uPJeo
	41DSbS3JXSk16yJkWTGclArU4+nzn8nQe/xLsLH7WPGkCQx2vuwKZ9mG9os4/xSxnth
	Uj3Lgl8o6TJtvQg4O/ME0TG3pL37x17h3k1Xr0ds=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825859bd9e-e67f423a-b9e0-4b3a-8d89-5e15b8e0ca78-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fd17422a08aa05e5d544e57cb8a76d94836e067e3e39a8a2d5bdbe3aee59d710
Date: Mon, 1 Aug 2022 07:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659339652

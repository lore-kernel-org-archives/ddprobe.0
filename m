Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3688E1840
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 17:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657993012;
	h=To:Subject:From:Message-Id:Date;
	bh=PsSrHYPKklC9gA4iQMh0Lid2gKuNyMW2CkAEV0nCEp4=;
	b=asiIwYowJ+W4v4ruFnXe3uoFpJ6cjnfq8wu2xaXzNT1QDnNZ5HmOM1uXUXZvS1pw
	CWqg2gcBjx7sLg6H+fxNL1vvYQ8IifEQ0VmqS74a1svB8sY4xtAx3UZBzofqWI/3btB
	qkl6hpvdgVOMnv249sDYVn1UvsduIOFjOUSpiSEQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657993012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PsSrHYPKklC9gA4iQMh0Lid2gKuNyMW2CkAEV0nCEp4=;
	b=Omar6zBKHECJBdF/B3G7bY89ldSeZmSfXWw7yfpzWV4YvYsQ/Dumjis8tYNZOiEU
	gARV01Fju66znGbeZgMp2CCJesm5de910DE0Du4H4e8WTZ21Q9YjLDhquodviF4a9aI
	ot5/UaebsIVc3kT93oceBG3VO8gl9+EPGErNvs0k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820815a463-fc96957a-3952-40f0-adde-5643a7aaaf96-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dcc806a6d1751a93f7ad705bafc20cbdabe00e7703061d774bd4963285d29075
Date: Sat, 16 Jul 2022 17:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657993012

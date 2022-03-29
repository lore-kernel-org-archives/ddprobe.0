Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CD437C
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 11:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648551718;
	h=To:Subject:From:Message-Id:Date;
	bh=TJG0xXPpcJa1VE0VvlThiLIo47yuUPptZsaDy/+4Dc4=;
	b=Wl1OKO8zU5sQN8tbQomq0G5dznCYxGzVqi9/7Y+piVRaktL84NsGXqhS8ttEbN71
	cHYpoR32yjG2ZvewB9er2XmV323Xubc+UKkbzJbr7hzGfso4LPjUCz1p3XFG+n5MV+Q
	xX2qFroHJbWmMDykD0N+F0U7n8VrNYZeHCRiM89U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648551718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TJG0xXPpcJa1VE0VvlThiLIo47yuUPptZsaDy/+4Dc4=;
	b=FiejezN4Q0j6Z+FiW+4GgIgi1FK294nNAgHQa9DHnJ4jNmtuLTlQFiaJVA9nLRTm
	1JxHApW0MMmHF1dP2aQypRsJ4Dw67eamJiiG/art2AUlpQJt3+C5epW6CAHxO31O+eG
	bj9AboRiA1aUakdj2AsWfy2dKG1vAcH355THS374=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd556ed73-01048ccc-26c4-4fba-a62b-4b5566139a90-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e6712e26ef428c3aacc0353e8386fe727446e00077daf289041114c78e552932
Date: Tue, 29 Mar 2022 11:01:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648551718

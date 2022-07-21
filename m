Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2E9E3C0B
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 12:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658405812;
	h=To:Subject:From:Message-Id:Date;
	bh=CCUoD7Oa+gOktIKcG3Tc690Ix5G2WzBH9Hu402lBHXc=;
	b=bfAF4tbJ4i2MwuoW4P6KwKT/hRmNxhwoQNthAkLtVVafwDe+CudQy0C5omiwXcNq
	MLRUFGXRinzYmrsaBQ2LKaZBcgsTupgsZ1FTHwuo1mK5hKpO0/fn7Upz8fiDxTWXqCq
	CGb2wEpp4ydtU2mhfUq1uVG0COnOp7D9oPxEfrWk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658405812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CCUoD7Oa+gOktIKcG3Tc690Ix5G2WzBH9Hu402lBHXc=;
	b=cg4MUbCPVxAug1/OjO7Lz7w1de+EJlOVbJP0TDGEvl5j8lZi0bS4ufb6cKOhtEuM
	4rh+Dqwp3mwcMNYLDQVJhCugpiO2eRbJ6wsTbWykfo8tIqWhOV+/bQoRpbsPwlh/U5W
	0RbaF6V905ENGnlk5sBE7ymDt448XDHG1bkWUze8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018220b07852-b1a7f414-c3f5-4881-9c71-09d01cd73134-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 66efb137e53e62d6aebc66ba4945f51dba345531e4ee7ece78ec03f78bd7eb6b
Date: Thu, 21 Jul 2022 12:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658405812

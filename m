Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4F874C66
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 18:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656356212;
	h=To:Subject:From:Message-Id:Date;
	bh=DkVkEiZdNq2h4QIi1BBW8BNFYku76bQd/FTgLEeHFlc=;
	b=dqeM7Q24kgoAtdriLVJ1NCvBsUPjK+kIjQNJYmUMdHMNHDxHfUWi+9MDDPOwHVIL
	LJB3HHmCkcem6QgwmUxmczrSv0Pb9z4NuSPGVuiI8MC4wxFqQl8n0SsCpokI0a9nFpU
	+ULtLiZ8WDATSumLfKImniOyfGA8lvpbh9FBxdj8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656356212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DkVkEiZdNq2h4QIi1BBW8BNFYku76bQd/FTgLEeHFlc=;
	b=PToQVprh5bDly15ZgMxexUx+VhD/32ac7j3VOcWgxYIn10jMV+g2Af/rGg1C9Weg
	aW5+eELaWh88PZYRu89WA1HTaA3w4yxbnZW9COh8xIp46bfdNfK5jGw+EeeazfYpLFd
	n+chmrj2RX/LD44FulFhj8YSzWUV6c9MBmGN3a68=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a6860e56-a54a4e17-3c9c-4435-aaaa-e6c946b19c07-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f97ae3622e977d14a6c506f663dcf86b9d44afbdd867bc22d20add12cb064eb0
Date: Mon, 27 Jun 2022 18:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656356212

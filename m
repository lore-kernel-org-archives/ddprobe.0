Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7015D3FF5
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 08:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645949184;
	h=To:Subject:From:Message-Id:Date;
	bh=52wo7n9FTqtmQMELBpglpjhdY2lHx/WO+psoAt/uatk=;
	b=gi8Jq2HHLjNuYsncsQj6tls3dDebPgUguZCvu9PbVmw7zWZy9Nt5lqua+R0OiVDp
	GKY1IkcOmhfbz6njwbLYRUIF6RFbYZfH2bU3Svz/tqY1NFRDQMsI6xMTNM+f923vXKi
	1+ZuVqM7sYyu16dygUHvUEdN37KDby7FIAQmyb5g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645949184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=52wo7n9FTqtmQMELBpglpjhdY2lHx/WO+psoAt/uatk=;
	b=WbRyPwuzeiOKLOmoR65go3lcBdt509RS/qzqVNsP8iO8bzBU4hOpybzrDNB+vTPg
	iIH2zMWJG42WfAce8YdKJ2HJAqA9ZHWLMiYhPJtmOZ8w7rn6zhEefOa+gwa9bOHoRKI
	xqjO7Yxtl6NUM1bn+KZu+It8MtLz/DWp9MekD8Vs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3a376b1b-466f7d00-73ef-4c87-a394-b8717b0ac0c6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 11d412c113ff4682505b3bd5a894b0a6e79ac7ad87b155da8e251f6430d9bc83
Date: Sun, 27 Feb 2022 08:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645949184

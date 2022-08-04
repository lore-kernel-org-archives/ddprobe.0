Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F6BC639
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 03:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659585052;
	h=To:Subject:From:Message-Id:Date;
	bh=WMziRkA0+UuJichHIoTeh/LYcwLUd14zt5RlNVe7da4=;
	b=deOxOcf1lfCgOpngaPgSu61Jq7Q6atHGQo0UIucgK1GxZcNGfHYHhU6ur8V6s6Au
	iM/8jJXZTTl5FCOmGBt0puWQsWzTMbG7fs7HYy0kC0ZrX4DDcs0hMISmHXbM9QD8PHz
	JIYSnqhlSNV5o/OGKQ32RCcRwU2zFuLV3S46+mu0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659585052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WMziRkA0+UuJichHIoTeh/LYcwLUd14zt5RlNVe7da4=;
	b=W+tkO5XyMgJujRfJesuPb8ZuHYPkS9InEzXSlvX0Wt1Xyw5+9v7ggBqvGppBotqm
	KAEAB4cpLTf0wVZZzxCaEWCBnnZlgkyWFDjshSaP1nZ+tw2jScMSKWtJAQkz/PBuc0Q
	3RdQjrF2pjMeu6BqHrBuqlqMrOOJ1T8VFSYVXdec=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018266fa3fc4-09629b32-1a1a-4df4-81fa-8241c0bc1958-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a99f7f7019d207005c7bfe397fad5a88f79fdfb182c80992ab35f67621db1eb
Date: Thu, 4 Aug 2022 03:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659585052

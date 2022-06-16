Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4479D2CA4
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 16:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655396819;
	h=To:Subject:From:Message-Id:Date;
	bh=N/OsOF7VIuGyDUYY3D73mRS7iHTllNHWNJlzTSehu8E=;
	b=ZVnXHqzR2o+99vhW/t832xpcrtzEe6ppS9kn9zl+tWJEZbw8I59nal/Bpdig2GJ1
	W5RFDXS11lVzPC/JMdY/tKpLQP3tuUN1ziBH6k4+Ckj3DeR1N67NuhSEqw52XmjGZEP
	pl+kxrbLbLOVOFgknDDHkQBzxhrVKs18jd0dxIaY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655396819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N/OsOF7VIuGyDUYY3D73mRS7iHTllNHWNJlzTSehu8E=;
	b=Hjmwx8TuuzqgZB807P2KBY+Xz+c+gAYjBVYNmtKSsQ8CPtby0OXGPvuAHeTuyeYJ
	9xaPxaqAG88/zgBnFMf9f7kdDRQtJ11QzfouSs8GePo0rf00EdT2njgBbCKJFn5XgAZ
	BjF2NsXAZ5JMkX+PVywqfUVPozm9/Sm894jsZvfA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816d56e104-1baedda0-7ab7-4bca-87f5-e7834d36fb1e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d946aa1f22b37b40bc6da2ba135d0ba07eb31f5e91c1c67abafdef17559477c3
Date: Thu, 16 Jun 2022 16:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655396819

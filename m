Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E088258A
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 19:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647803784;
	h=To:Subject:From:Message-Id:Date;
	bh=Ef0+Lc2a2iw9zK3pbF7fotUZD4P1VRcCRWAZiXGfOfU=;
	b=WjVvMpXL66sFPt8MJp5wLgziVL1LaRvHj9fpesMBvdhEhA7nhUN3T+CiD79WcFWf
	xjMjagF5QIbtxjKNf9atcZXYeu+mpsHerRRA1fwmB8lnQKMOsrWtcqloHHvzc1QHCPK
	4R6ijcJSie80MZ/1ZJERfKWNLCnISOwVtddQPRCk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647803784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ef0+Lc2a2iw9zK3pbF7fotUZD4P1VRcCRWAZiXGfOfU=;
	b=VlN88tkOlOGZUAjyH6SSKVl6z7mXRiDsiVQA3WlB4+tt2632cV+bMyZlrC/O7jFI
	R8c315NemyjlRtqy6ngCh+UUDagsty4V7oj8IKSqunxBC64kIjOcoxa+AnQJNPEWVol
	30HxeHeBhYQgJDaAaOzNsXRTnowPZlPUbiOeoSw4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa8c25e1a-b2fbd69d-ce5a-41a0-9037-8703c0b5f1c1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 21c4683f566157cfa55fd9c80525b07b06a1c46c9c2ec725b280f76a11eb3576
Date: Sun, 20 Mar 2022 19:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647803784

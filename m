Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293CD28F3
	for <ddprobe@lists.linux.dev>; Mon,  4 Apr 2022 21:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649108218;
	h=To:Subject:From:Message-Id:Date;
	bh=alvA0BbMN7RreZDgWT8gnJ2ALQJWlbV9iSIVUS4+2Ag=;
	b=JCYjLbNDSZVl53ExXiwyjO9zqGmjXYwM7b1ztbpkT/WnyNjw/WVnYjaXkX2G/JhK
	YVf3IuA8sjTw4tXSoVCKAt4+HdbX9jL61TGWL03+YPjQ7AeRd+q+rF3kq23fPYaSm2P
	UaUYfK3fWUnppFFP9GiYfBrLqrq5gEExe9hGJPxI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649108218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=alvA0BbMN7RreZDgWT8gnJ2ALQJWlbV9iSIVUS4+2Ag=;
	b=XJUIVJ+XxEGf0zR5kp2mTG1h4OmQP7+CNHiJS1Qh/RoXCxs6EiVKP6bFu17Ooskg
	fGkI9l/vbeTYeQyyT+ET9rgaqWrftNUTBAB6iLZwaJmJhcYaYm5c7dRajHcORqutbYz
	QbZ8mqPNNKQNyJe3v6zftjq5vPH/BGvJRG6aaH6U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff68271bb-d1947ced-8e0f-40cf-a808-fde03b723c4f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4fdc0a9d95561d5bce1c5c289e03b39cc933607fbbec8bfb03c428f59fb5f4f1
Date: Mon, 4 Apr 2022 21:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.04-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649108218

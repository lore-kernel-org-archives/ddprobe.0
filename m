Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F91046A8
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 08:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651309138;
	h=To:Subject:From:Message-Id:Date;
	bh=vYtJu4Pw+VwFtGwNzrpNrcwa409Nc9fpRNY6FqWup9E=;
	b=av/XYNrcGSozKSMGgcleItP4K+eoLY6FvxjCypRf87MqvtgHRyZ6lugXChC1d3gz
	K4hB6RF48rq/S4i88TNIyZKcY2xxXuhgOqjPNrkU7Zh7L+85HcePrRoBOxCJ39HD1Ba
	mUpokUMrFWUZdGgVLjBRTG9vRTRjsVwWBPQN68Ug=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651309138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vYtJu4Pw+VwFtGwNzrpNrcwa409Nc9fpRNY6FqWup9E=;
	b=QjxteJFs6/y40B0qh3cLsrIpwKk1kymCFA4Xpq3e+bWNXSj/8g2a6bA0fg5rJcv1
	j3TLjSHh5QWDrXvzY2REG0U1M43ItNccFcN+HbjEpmPFzO1n0GIb4z3MHStCwQjLV1S
	j4cNknOTgDn+YNLKvKqBjgnWtMoVeGo5eS020tDk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018079b1d19c-8f2d6f93-faa0-4ef1-85b5-6ee748a924b3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 809ed4e00102ef754ff767393a277865545070604cf7363320a6c4d011e86c40
Date: Sat, 30 Apr 2022 08:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651309138

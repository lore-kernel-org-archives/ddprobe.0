Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B9551844
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 05:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647323484;
	h=To:Subject:From:Message-Id:Date;
	bh=Vu5rCixF6KW98JftnypoqcwN2W9MvC6h3YejTj49zCE=;
	b=fDeURP7+GLc6FTdFzTvW0N2zFhnUNxNfYKfilbj9gzWvpJ0ZKHis4WkK3tLH+FMA
	pEV8Sl3kJjr3SKJHVOBJxteEDadJMLT5Cu12Jz22q+4rozB5QoV62DoQ1ZRO3AX7Lfg
	QGRKuE+xxecSMNzDKLPtJ3TDOifBJiHesCbYJZ5Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647323484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Vu5rCixF6KW98JftnypoqcwN2W9MvC6h3YejTj49zCE=;
	b=Fg+BfKba5m6DOq8ZfHmVgdnA3fxvjp1l1P1268g2uZJ6qfAmqRhEmTGjpZLoRTus
	uCsyaUK1go3BkZucWRLKX/U+UxQf7Y+i5BHK/hENWsPS4+eeMhzA7F7Twz+gIHJtH38
	DgISm2XkXFz8g5z/dbs56hIIx3Z/7+tVuG+6r4YM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8c219237-7c0d7067-ce99-4a08-8601-87dfc91cfc5a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 31aa2c8db54227864fdc1eb926f53020cabc9715496d544db42563a4a9d90c1f
Date: Tue, 15 Mar 2022 05:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647323484

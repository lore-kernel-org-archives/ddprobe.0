Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D19C7E
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 19:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651002718;
	h=To:Subject:From:Message-Id:Date;
	bh=ybgqiiq5+7K5qqdqY24Wn4726Ezrzizaicvatn2/Brc=;
	b=gCp5wfYnFhhEHE7blhbW2JU2/0Vcm7dTBAK+wiXOnME42/cM2nbXMfGSW7QDxtp7
	rgNDSBpH4a/wj+mHeuQzVqJeKtonwOTWoAT1a65FNpXLiZNguQBm5gFn1RV1FBIybEJ
	mBl7hkE81mP07cfdKN4yRiAQ09RL14LYpZYIzy20=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651002718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ybgqiiq5+7K5qqdqY24Wn4726Ezrzizaicvatn2/Brc=;
	b=BjEznrI+2/GvhGmliiuH0lI1mF3AOpEX/Nox2x+nqOWNNnTEByZRzQScyOPKjF25
	z7xL7JMUqoGXEgBezfshS5WaSpSdcmhVlx51bR3wkzGJ7skiuB6wC5O4WGNSm1tg8JZ
	U4mELE5+WJyC+ntkipTxvrVZFRWrfhUDsCqYwpyE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180676e3836-439a2163-f3f5-496e-929d-b20fa392b20a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8121a06b870c673e203ffed8ceca05468064c51bacf962e283a28c12245ccb1a
Date: Tue, 26 Apr 2022 19:51:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651002718

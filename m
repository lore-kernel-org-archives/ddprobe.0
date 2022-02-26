Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7118428E0
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 08:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645865784;
	h=To:Subject:From:Message-Id:Date;
	bh=IZo/q6XI1MnUaRfA3WO5VbFY3e0y6Mms9LoZ0KtWINI=;
	b=U+FWu5pV6fgh++n3y9X2G3I58mc6DUOlS39PhCwVtagxWWU1jHNrpdDCs1P7vWmP
	IglPTSFjnQuSLxv1L5Id0pQIalq0wFJre77fexFw4RHEzUlH87FZW3/2JR4BrMQPUZY
	kLIdDI/XhNVPjuCfodFAbxPrYDjTMNX68dbILDc8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645865784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IZo/q6XI1MnUaRfA3WO5VbFY3e0y6Mms9LoZ0KtWINI=;
	b=DO2bpVcy+WA9cWbkOGMBWz6BSnVi2FWGIhNaflR/Tkixyyd0VSKT+rMxuR7yMyYY
	3V87CKqb8iiQISPr27gt0qlyFS5ZacxzmI34A77UICs05bESlX2zEK+/tYr/K+p/XMn
	e3oXT1HK0z4P/L5oFE0HcKbXaBBeNZV4W/SRGweE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f353ed5ac-4813b589-9f24-48fa-9a2f-a4c5eee83e05-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f80411334adf49c00f67e0fec7d5001d81cb271b268d0f87c14a04280f7361ac
Date: Sat, 26 Feb 2022 08:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645865784

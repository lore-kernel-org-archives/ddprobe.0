Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1E4F64D
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 02:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645583484;
	h=To:Subject:From:Message-Id:Date;
	bh=x6NwF+1dwPxEIwuHmEaB1AdomRhotZ4c+MdCWlnyR1o=;
	b=FgIoyxkKfDiUWZnE10/Mgj0M/WYt0hT9izC4FW8P9btCytJAEVCfQa5pB1fI+yis
	oaWB3EPwYnxI1TLL60ohYr08GVV3A5k9wiyMehM9Ojpxf8k84P7Fzr1c2TOZyo7QS7U
	UtV7fYFpp0ZMltb9E0x/8VC0qrp4W/8tlnyF3pts=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645583484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=x6NwF+1dwPxEIwuHmEaB1AdomRhotZ4c+MdCWlnyR1o=;
	b=YW6oz9iklPhax86C77wyec1RyU0kYE7fnvEO6p9U2Zfk7Q4qoT8jj+Oz1xSUDx7f
	BTJAFlKdrN14b6nhAXlyRjaaf5Lgda7BCsPfTI5qYmQCb7/CCPA3bFTRdEZ4WsCrwY2
	Vxyc03Bfddi995PsP61grjC4WY4Fk+zdAEz2JvqI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f246b47b3-88a7cd9c-8d76-48ee-9179-748267e07b81-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 31e5ec828ed2253e5a18ddcd91ec1aa84ac3951cf592584117eea5e1c6a4ede7
Date: Wed, 23 Feb 2022 02:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645583484

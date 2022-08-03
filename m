Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48EE37F
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659498052;
	h=To:Subject:From:Message-Id:Date;
	bh=hsof1ERubncK05k3t8kCgpTH8Vu+jy0SfUJ300WIGL0=;
	b=Rn9nRpi0XZorKEuOC0JsJtlmJAEqfwNtp8M5GOB+zZIC5EZ/kFqzvPGKijqE66oE
	GPHVRU02UIj8PPStVQmzQOU9/UyVWYBoYWgbLWFWipJWUu626c3p4y5H8EgTO5SKOrb
	lxhpGN4ALWh06zpgSPHel9rQxwKdop2Yk3sv46yM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659498052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hsof1ERubncK05k3t8kCgpTH8Vu+jy0SfUJ300WIGL0=;
	b=jRsZiyvjsgpyKvrKzM9n1tFvJzsFPZfgzec+aPvuePiAZZf1fHIvxCbGbHlFbk2Z
	YeREUP2te8Bb1Md4d0hG31TKhGzBYlBQ40faJmbN9lLzYM2GdTXv7JWFUwhSrLNDpnU
	N3Kfw0qHdYnPJYYs/GBnn6FzsC+YOmfOLNvg45yc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018261cabba9-48f218ef-80bd-4357-a958-aa55f2f8aa03-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 79b9e6ff6f8f58dd0b75337e2d0f9d6704c9e060e7f7468029f19c76e2e401f1
Date: Wed, 3 Aug 2022 03:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659498052

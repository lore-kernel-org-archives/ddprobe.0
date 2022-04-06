Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EA4918D
	for <ddprobe@lists.linux.dev>; Wed,  6 Apr 2022 00:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649205658;
	h=To:Subject:From:Message-Id:Date;
	bh=bMgGGMBgou0099WBqPPyQkO9Z7vilNnTbumkWOlT5eI=;
	b=HPsL9xwtmJENWvBnEmaBAqXNrAR0Uil3SdXJyNwEVHIdQp3Lr3AHHzMqr8sGDVhZ
	deR5wECETs6on1Fr01b83hzwxgKjs95phInLIVvpn3VV3DW/OiE9oiYEO71ZrKBKAHo
	2jbaPQ7R7b/ckaO8FoHeK3e2eBioaRrG3IuRCYek=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649205658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bMgGGMBgou0099WBqPPyQkO9Z7vilNnTbumkWOlT5eI=;
	b=anEHTNPAuOW4HRJYDdaQFBiasNNns9ctTPvZy/uiZoOGJ2MUqydruNSL77A9XdiB
	iDCqw58MW/8YaLMaODTjgcm/mTkeGezUvtRMIgwP/BEznWQCkH/i+ZeovZgWX9EzL0k
	AchsLvUROshgz4SRJPENk3BtiIUt/3d78euap+iI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ffc5142e6-60e4fe6a-3314-4456-acbc-227d2db7f2c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e9d90a2bf654f2390aa114a185065d26f4fe7ba83b7372d67e3367ac5d039933
Date: Wed, 6 Apr 2022 00:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.06-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649205658

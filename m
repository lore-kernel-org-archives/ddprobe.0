Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B87A41869
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 13:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69E8CC433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 13:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662124253;
	bh=31CBq7J96Hu0mIVEHsQegLwWuvGXzlvu/LduEfgOuls=;
	h=To:Subject:From:Date:From;
	b=rpKBm6itmFgdE87yYBTfxZMsq98j4cVHGeW7tf1c2Qai5u1faOi4qiY620rZO8pNv
	 Wf0lOsHYHd+yA7ebCvIiboPtxjjIYdpQIwZXzH0qmIXKiSzG57ij1+jNcDRkdilZs7
	 aqJoh8ysN0D7Et0+cUAHybu3Qa5uZbVa0kX4Iqi0a+MORCicM48ASpgBscOhnhXddl
	 SB6ICs8y9m10g/LetvNqsUzxia5xao4XanecmJ0oPzNjXizwc+CE/4IZJiLmi80LCD
	 eL51e5YTZmk1Z1Irh28K3Ur0KoYNU8YtxEQMwTe2jxg0P7uB1m+JbVlqhXDP2S16Tf
	 JZAP62+DORy1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 546E1ECAAD5
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 13:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166212425333.28005.7077902703859303430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91604f0793d459c091be0bc2ce74ed0ab1fd4882eeec270bf1d63735e43f24e9
Date: Fri, 02 Sep 2022 13:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662124253

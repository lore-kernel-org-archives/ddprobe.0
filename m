Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0F8E7B
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 13:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B820C433C1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 13:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666530053;
	bh=O4UzYc9BKovE8NFwZA/NY8pf2bIsZOHrsxXqMi68f00=;
	h=To:Subject:From:Date:From;
	b=SjCPEZ96lBd52uAdvBnM0038CPAHKGL7vtow9B/2PvOMy3h3yebD/JYsjj+UrTKkS
	 ubTUtp6ZXmreGyMOiywshoAXfnV2DmkWQbiMN6YG4dMADhcDKRsriV+zxNeq7m5u6o
	 kW3UqL5+V2zHG/wIM0fwxbU/jpjM7xBvzQ2j8MeaAqpfWw5Xjuk6yzzQ/pHvxWk03m
	 Ws0i9GMCYevncJtlQ0yOBMAAt4BAXMp8/2uMnO07velKU6/xvIhgrgsf0QjJNcGyNN
	 WkqlAKuyRXQ0GSaNznp+RtggfMR1cJAUdVqCLeEx04vrkBJvhXW/s7JeOLHuE82M2T
	 BQCc/SezewfBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52005ECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 13:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166653005331.8809.11200158465806880918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64911004cdbc3e7464a3281f8b4ee6b8da44e6f308038499b27513eb1061baf5
Date: Sun, 23 Oct 2022 13:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666530053

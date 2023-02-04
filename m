Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 468F97F
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 10:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC9C4C433D2
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 10:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675506366;
	bh=FuLMcBiHvQtVlW2H3xHKTFO/wMpj1IiY+hlUR05ja44=;
	h=To:Subject:From:Date:From;
	b=OjTJ0ap8vWWqIqlOXsN+SvBdmBrbvP0mJk6NYDP2DxqxmHp1Estp1CIP4Hvi7UaB1
	 rtqwXS2K4t+0zf2VW3bjEai0TaCUyrHXq6qQ8GIwchxAxl9XDlnqPgIwJwEo4hDiN0
	 H7IvkEOdLU8IQTOv4nGd1PmMKmOLyeExGe48SRWr/jltZAOfCagfiJzd2gKFg+4zN4
	 YSzaOMHZEh2CPusIRYlhKZK/mneROyTHVMaKSV6WplNbl2u86BsJZNHA6dlqbJj/o9
	 TXt3MICTR/ttacftz436FGsvSOqEhQLhXSLBuXKEUU04xuyfVoZBPvVuodpZHOzwTV
	 /EvaqVyYuRzgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D323CC636CC
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 10:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167550636585.19834.17009755564128087512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4026d9972fba257dc007ceee834e6c568aa433113e95c6b40b2948a75a9b4049
Date: Sat, 04 Feb 2023 10:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675506365

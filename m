Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E0E7D278
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 09:46:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0092C433C8
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 09:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696326368;
	bh=tIiN69PJvdRu6T4vKMmNaYY588hLBCrXpMJ4Z3QssD8=;
	h=To:Subject:From:Date:From;
	b=q9pmQfPt+MoIawPKlkQv1xLBEqV2zHiCPx7pd2EGU9NOS8XgtukMANklMwzq218yb
	 6rLhh0bZNrhTYT0NTjkfSLOYg/3MEjc90rf09Wka2ZRHZ3z0FfihvNC4xQQUjnvEv9
	 GKljypRTf610NO3+cMmr3vlr8jg9FTnbCZ7ckyH7papAy6LLUgolPddKo8HiDPAGBZ
	 zbR8WcYGtciTBKIWrv1sj/na7xTssT6H19xtjxtq0MfjpnebP/0mG3F2tP/gjsTal5
	 C6GJ/Uzvc1xeCXfgckvkEdQ2G5f1oJF6gNpUMsstcdag74mDujZAjARqVU1+DCqG1Z
	 AG+J8Pm4IuhAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B29D6E7543E
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 09:46:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169632636872.29218.11356067459633992995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d546778e71367c336e6213ca3b5d28926d43e467bbf716a399064b8f1eb70064
Date: Tue, 03 Oct 2023 09:46:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696326368

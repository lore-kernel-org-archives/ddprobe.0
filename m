Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FDA47E5
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 00:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6B0FC433C7
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 00:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694219648;
	bh=pFZjf2xcKcSa0q5uTUU4YkQZ7DG8ganb1Vyww1bpzEE=;
	h=To:Subject:From:Date:From;
	b=hfhDBzeprDcxdixq1A45dR8zyKz6b0ajvQsheu4XIWHc+pd63k+AjGvpB684i6Fht
	 MwfDkotPYhOd1TIj43K8+V8gZWee13cb+QzeinOYL0eDVArv9jFL/7c/F5Ndqnjqt1
	 XExjwV+PpRMBoDt9uc1h7vvwCz4+h3x39mVhZDHuR8iHymUuEHsK9GqACniXZKgdi/
	 /PMtdBFQvEaWIgI8Twn7uUrzj9ep78QAB4Ovk9+E5F3081LEv2dhqyvzDTLvM4jBmR
	 oUZmv+m5e3tVOaePqKgElcUsHFsZpvkNuIi0B56xKVZwWqDQc3V0XtN8k7/sSOgDuT
	 Jk+zcDQa1YUrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BADBDEEB565
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 00:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169421964870.31977.1429716034506707547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c564ddc83d4a037829827b95401db229e40b4992d4ebbd80bdc2e8e165257889
Date: Sat, 09 Sep 2023 00:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694219648

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8881322E
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 15:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8794BC433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 15:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671897087;
	bh=33WE+8M8DMs+fkix71R3V5FWAEOKcQEf/CfbMTShXWI=;
	h=To:Subject:From:Date:From;
	b=PVyJ2DHVThVQ4nwBEpUhQhOOWEu2tyshcVXREO1LkUFR1k9vsfakWdLMu7CQKV41B
	 nfGhJmbDfuVGN6E65YdHf2P84P+k1SUJTkkVMaOE+qSJasXK2WajSh4Izvjt5GWEaP
	 RYWJpji4XCwzCZ5IUzhrevzvIwZiGf4pE/sVTCsVNe2xEE0xbRvIrYQDBkqKmSiJxZ
	 4GE3AtWuGbHdY4xQ3T2EQAJXsLc73xVcQ+VuhsI6Dgp+rwAx3m7ffUkcManqhDqjY6
	 mZRnpLHU2EdQwwXe6ENvLHHtKa6NhIVoo9DccBPANKN6MQBlksExKeB/lfxsYfWqpO
	 YrFMTkdyu7COQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 646FBC4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 15:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167189708739.20888.16990193692684830554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed9d91fb0c53bdec4b4bc787ad3db59870b7eeca22542f6432210120709878ff
Date: Sat, 24 Dec 2022 15:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671897087

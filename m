Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F75A1C02
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 16:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1AB5C433EF
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 16:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681834746;
	bh=f82WiawOTG5agSFFfrNi/s+ThzYIO33YDVbuf2lEihI=;
	h=To:Subject:From:Date:From;
	b=QNp+2GL/FYyp+fxvHkFDOmWLO4qUw+FxoWgBP1/dkY7scAZm1M2CYUvMDtPPCDEmM
	 6YUU7dOXUB4SKNU7Nd2ZDx8KJq20D8Ui0vcNNAJsPlEPKn0637ZCcEXxGEnx+pjxiF
	 aIq18Df6bs4wMCzYiAmIlX9pvf2m/E2xxR+Hi0OQFgotNiI8R45laF3zCPires/Dp7
	 oKsbWGcApOCFg5sfVUhr7s1jIBTak88+ACI3DVV15PgXDbbGhIuKXP76dCvIRF+itD
	 +ZwfHuJXhkTSZRpC7rAphJZn3ySebnva3wk/szG9W2TgjwgUsN2EZtm//JA7AH35V1
	 hiZ5BMprnuo6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D44F8C6FD18
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 16:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168183474584.32651.13244897912512713389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae04a139453a9866421cccd0a209c8554711cc0946e4ba6cebde81dbc30e9113
Date: Tue, 18 Apr 2023 16:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681834745

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E35D7F
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 01:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE884C433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 01:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672707687;
	bh=38I+XWam0BvI2daPRX65ubaptFmoCzAp+zQJ5KaK6Eg=;
	h=To:Subject:From:Date:From;
	b=N0rW767JcBm9u1ft/50I0uh+zmyISnlcvEWoPYRpL1A3oOr5p7+wWpB5E93yotORM
	 Lq3ZtU0Up6LOFmHbDo14T8af987ebt9Y2vwkYbhUvowCb38frcyOS+yvEAdKAixOt2
	 tWw09xJ4TycIbHpY1N/wQu0Lox3elNRkTvQO6Yn8NiuImiErEOeOGAVh9bh25Ii/lJ
	 wVIJnwTJiYqLBcGmFbzG+z0jGGp3tHE54wrIX/nyMPHQzLYe9/LebuUEgiM948D1RF
	 fpvz6oZbW1f2DJ1gHpRuHkMQ3yOgzPXL9mgFx524gL+C1iZtfz+VDM4HwedADCQT+F
	 59xFeQM7vUWbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D97EC3DA7A
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 01:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167270768760.9491.10363361643423496376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4f0dffd23c088cc599a5a9d2364e0cf4045a563b84eb7ef7c85243337be5a6f
Date: Tue, 03 Jan 2023 01:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672707687

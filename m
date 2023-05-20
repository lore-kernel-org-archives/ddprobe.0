Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64CB3653
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 05:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 021ABC433EF
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 05:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684562346;
	bh=WZemkhbbZMpQ2rekunaa6tu6AXPZk8RZzWzAPl8aNFk=;
	h=To:Subject:From:Date:From;
	b=hgV4coObj/JjAKR+30SqHxpqGdgxr/z1IKxkTEok/owdv5odgUtolaAV52kUbT/nf
	 y1PUgyO5NQWybnioYQBY0c92gqgfmCUclcz18gHnszE81IcVQyvktsTbwCRVGytw1+
	 v5SNnWnaOdrsBaYFbCoKDvKYyYwKgSuTgI9UMl+mEI8/zTZrRPLrw3Wa/4WfbLmvyF
	 KxNi51wVOKdintaqZurczp3nquG1cYEfW10K55aGzl9wMZx2j0LLz3bL2Iq9ZAiXRl
	 57ztIFYJ4UupnHLfC4KNiCqF743nbI0AZ+nh8FzlURb7gS80+Vd3njno91YDfKfATX
	 i/2Jgl2KtPuDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C530EC77B7F
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 05:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168456234578.24631.8948939803190332810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bff02c896a5ae7735d45440704e9dca1e51fc90984622c97c938af0416944fbd
Date: Sat, 20 May 2023 05:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684562345

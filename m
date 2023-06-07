Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78B296AA4
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 07:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E78B9C433D2
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 07:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686124325;
	bh=0k+oejrUM627sFwRNQA/PONf/tgi0XJKAiONjeTLm9Q=;
	h=To:Subject:From:Date:From;
	b=AUtScXdMJkQXJfI4kLDEh7INJeOASv8dLEOTugeEjIsfTl4OeZBrWHoHy7to6TwrT
	 LxprL71XpqMHncWZCqww4oBY8e5L0ZSo3PqdzxWlSNg7aD99yTt4HCZ5TPyTXQwweu
	 QFU5XhNLzYaASMmNlBBJtxNDN6U2zG0yTgv/jL7HMuAmha5gg2oj7WP/a/puRwkckk
	 G40whoaPAScPjetIvgURlBGsBJvN1fOqc8h4MDlfUN1px1dTT7nXgUuLPbnMELenYN
	 WJwtoHQ9AG8FCI9zqkMtrCNzrBjV0B3OTHYvm49f/2ruraXyoKg2Y9hEXa2l16ROTS
	 7ty2pRlu+Hh5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC9EEC77B7A
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 07:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168612432582.8157.7783507289168021184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40f4e14e523bcc4794c6d224cb4fafc01d4bb51d3a967ec7f163996fe057a187
Date: Wed, 07 Jun 2023 07:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686124325

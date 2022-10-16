Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4CA47E4
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 05:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71D3FC433D6
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665897653;
	bh=77sbqkAExuhN/7PGea4JQu/4m++pUBGhAPpuz+3OE3I=;
	h=To:Subject:From:Date:From;
	b=Aa32440Q3wgaREkKo6EPfS3BdiO7a/CVcoPMm0JGpbu2S2Xbb8ABQ5lvsfHqdTtjn
	 KY7N3DoxLpT3+jpm+qESoeQJhhDaMhL0jF3AowZrourE0bYYcRzyD/CfT6QvSbM84T
	 9SPb9ODB+AyJpZ7CQIZ2nVz3OMyCtruRHiHEkBLfBXCQX8CUcDyrPeAs4l89++tzAg
	 jn1YnBfVxEWTVl/U7pLU1IJAeqn77X1dDD6c+tKIYfKAbItZeVC0o9Wv/A6TXYzUDi
	 izDzQGqkvR6TZxhmshbP2Dd0Lnjcf/4TLKVCv8bxipvkIf4tWwl8ic2U/TyEnHxxjU
	 Mn5tgOxxesbIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52392C433FE
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 05:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166589765332.7274.17227744720840278994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de79e9a7224e0caaa7143278ed55572d2192c7385cb010fd8de15ae3bec6b7ed
Date: Sun, 16 Oct 2022 05:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665897653

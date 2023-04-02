Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BD6F53A2
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 17:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5BBAC433D2
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 17:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680458105;
	bh=8kbOIHnZEKXGSQyCwNbdb6dnT3AyU0UR4CfIQmsbzDk=;
	h=To:Subject:From:Date:From;
	b=UH64hAYsaFwHBatfyyZucp0qNwWPHLT22U6Dg3SFOQLDeq4fPja09Y1A+NkpQkahP
	 vr39XJv2yWznGtY899prDNYBPSFoSrPK5qVlIaPMwo+Dp2z5M1DcE3ZDZX6oCGI9f0
	 NNr82g1Ybc4StXKZb6lXh5dg2jl0AcEnVctAU7tf0ah+agtV5S0vMl+jwcQEagURgB
	 ha3zzO0frpKvmfYH1HKgEYmzpTo+1xCFuaHovAHaQUT/Iczid6HFcijYgLtsRjJzoO
	 wo9PFxFZrDI57r2nEznKnty4amddbPU3W1ti3Q9LWvB6UxOqsOjnipfPgn2nWaNxGK
	 2AL12oDUG/1cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1C63C76196
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 17:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168045810576.19874.9312221411158741993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09615ed3d5fe88b48e2841c25e10b54f0de089fbb22a9e8bc282926d94e20807
Date: Sun, 02 Apr 2023 17:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680458105

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D4B187F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 19:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDE69C433D2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 19:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674847985;
	bh=yATEvGHzuCEoy1Vl6Lez+gYdriUuNMavyOmN5zzu25k=;
	h=To:Subject:From:Date:From;
	b=JmQK4YKJmlpwX5uIECArOAp8ddXdyuDQwUYHrMC75uRvgSAHG87Ze2YQQaZ8i1a93
	 oo7Jl8vRZGetbGgghd2u1awLpx/OSOPRWwtu6OTVpqMLaq7X+3JdvW03dYqeB8RS3f
	 MLARcTQUvhnVV4fUkSF+1dr5DTQQjuSG14NaABKvLrj5e6rAdaZbs0VHK5Qfv10AX8
	 RHMPZeIJ7D+YuuNJuOxhI4MEShD93GNbwBZlOnVysdhko56fRD/1qebY+TmbKYpt+N
	 5RSNEgBjjeuJClKcAI7aLs4EJj3OZFcXFwCoX4oWeenEjvYKDwQQjxhPZhQ6pKkbaK
	 u4bMxkkw2oS5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDCCAC38142
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 19:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167484798577.24323.6732906201260410757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e04c89c71b956707debd9d3c334c94ddc2153cc1cfb9c7dbd995c12a70001c59
Date: Fri, 27 Jan 2023 19:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674847985

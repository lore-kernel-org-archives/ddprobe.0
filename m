Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4027E168D3
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 10:17:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EB874806"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDCA8C433CA
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 10:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696846628;
	bh=fM87tpqKuRw67tVqid1qH83D/afU1AQlW9m3zOxXQV4=;
	h=To:Subject:From:Date:From;
	b=EB87480633Hhy/so/SmUSMOmnDi+MRjI9I6qtdC3wYxiO8DqcZBdowUCAwta7wrsv
	 W85ouz7r1G80jdazTKTLn8wEFvs3ifqRQXcl7JsiFkqMEgaMiCJ2LWsn4MHhs9KU9e
	 xlERuMaJJ6JSc0dI4LXzQg0lhcU99zaL77TwvkflvMMSXsgm2+eEoxE+gJyGucbtcL
	 w2w5VJvgTGDLvC0UTZ2Icxu1mcEQ9GbJ23q/IGRRstOdWVGKRJHDmrpYGCYDsY91Vl
	 SVOjImlI7JLmha+NO05/RlKkeVK5VkZKsp7XSlzs3pCCqh7fX4IPDqmRb4iip3KEAL
	 4LzYc2kfE02cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A51F1E95A8E
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 10:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169684662866.11064.16654211453409105170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4550b88deb4032f0445dc600a094ac58c697d5afe133de942f71fa3956ed1b96
Date: Mon, 09 Oct 2023 10:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696846628

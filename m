Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D26FE17CD
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 04:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C611C433EF
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 04:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671768087;
	bh=6oWiL5vG3duMjsPxAYuzNhDIrQ6p5o7FQe8FJsW5ghc=;
	h=To:Subject:From:Date:From;
	b=SFl5h/jDTe6WCrZlEIR5mfbM24TMOmT3qfBFg0fK/l1BMtMe24PMdAw4v/knmcDXr
	 k46hZno4t08nzHsIf7H3KsUgQsif1BwZy4u8Yq6AUr05r/ijnJMqaIuAFeMZITdrmQ
	 N8C4Qpfk/jFqiNP7pf43uscaUCPaRw/ensKr33GZsUcY+FJnIIZhreUX9ethHjc4Cd
	 3/wCTJ8EPgju+B69sWIc3Xp58I6ki3NYygTVkxAiHn+LXaMf6HYq5lK6NcoaWeCpvL
	 livESHBHbcIlVzUkzJQqKuEHH6TPhaHXeio7Ixne9U+uMvhuu3w080sKra6kP2ZN2m
	 zTpZ8uankRqaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 615C9C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 04:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167176808739.8513.15823504039235325925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d96ca6c235df097538bf8db5cb886efcfe06ae95ed8fa7774f596d5ce16823bb
Date: Fri, 23 Dec 2022 04:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671768087

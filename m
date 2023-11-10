Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192563AC12
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 19:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iW4oSCjO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A0A1C433CA
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 19:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699645696;
	bh=aysLjT1ua2GigPFR0f7oy98UDDEaeWoY23jyIK/6BAc=;
	h=To:Subject:From:Date:From;
	b=iW4oSCjOoccPJ+GsRiFGybTgXJrpUhxPS0dltYMcwbeI/SA/eerxFUIwfv5ML+idv
	 n+TGPncdQaK4waybo5DMlwgJzFqPAajQ+3jan83l8lVc2tNx2P+sUlfmS6zssUXg0L
	 vJuEQXPDuJ2mkriYsG2oLKIbPWZiaUfxOa84kaBe2HUWJJgPFcSqzQ3LGD6tDHtjj3
	 IhKmWgSbBo7wADY4kr5fDPhOKYufvSSIRdhOubny+oRgS23etb4hbf+ZIzI8OQaD++
	 rv4JI9Tf3mxoVso8m7tw2OR4J2t/B3ZGI62OZ257f+iKzhuh525W7DASezTj/a2RZs
	 rh3HCzuglm/fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A5CBC4332F
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 19:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169964569642.18672.1434378260635352137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20236f264885472d3fed67b233b59fe024e8d9f739b229e0ec5b7b2a33ae94cf
Date: Fri, 10 Nov 2023 19:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699645696

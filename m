Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A3BC746A
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 15:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1ACFC433EF
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 15:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676648645;
	bh=v70El2eViX64xo9F4LTE9f4tWWgBV7xWyM4GRdYZ5Js=;
	h=To:Subject:From:Date:From;
	b=h+QOKytVt31tAPbPka92r9yiLZc1p7kMjx830bFxJqFlthgmahlXzLL09LVpoCeTH
	 cJw7kEvtXvJEGGuEsAmhFZ3no7POdPSebCbAT0QY7bEIQSbh1ssY38zImiK+xjc+j3
	 pMAx8K7TMEvXp6Elhylk8+mTgCAF1/nb4IgT9QUQhWvkIbr4uyDTqJ5fkUm6iV9IXx
	 iGtSewZ5ODYSxX+DPRPCnWyG4hVF1P9+Uz8S2mrMaqbLXK83hu5JnvRYhEl8wgsK0v
	 raR5kvKWDi2EmPDmZEajR1WN8dCeThKk6uPNVzHg0m7a2srHkn4T3oKAkTyK6PZsXh
	 dIEFUU5kGXa9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA02BC05027
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 15:44:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167664864581.20940.13602691059344456453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d28094d1fbbbc4e90ff1457257c3a973e9f3b9491c90babac4224070ad42c40e
Date: Fri, 17 Feb 2023 15:44:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676648645

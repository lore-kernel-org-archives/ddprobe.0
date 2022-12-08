Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F2D27F3
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 10:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0F46C433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 10:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670493654;
	bh=UCgxc9wnXe1vfl7ur8t1s6Z7JsdWlh/bImbZ3rC00qc=;
	h=To:Subject:From:Date:From;
	b=uajWKePUFBldReh8uC211XiUtEjaPE9PapXu1aYoU2d0IH++oQ/6yl6N0CNk9efMB
	 QICpoOfFgtb704k9LPGiAQ1bZHkdwtYudEyqMspi12htzWlhXNMRyHj2oYcbKRyW/u
	 GF8Od1JopEmLuDBeW/GqfTk5Jx92eY7E6OKniJt/0JRkfsgT0RFoIVxZJ0xJlgEvis
	 FzFJrIsCoaB9b7tappmmfi1mPh+P01z0IyidUby0j7eIZjBzAoRmi/kM9JAwd7EDmg
	 VnXnn+X36oUNUO62kxve9nDetU64xBqFHBqPeQBbwDIrNKCc5UTWRsYlYsnbNmeCg2
	 urJHZWy4LPE0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 83E23C4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 10:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167049365452.4370.3124652290971354470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7e4f0c49c18667794f5e658cdb96592c27cc746f372ab9618903214303ffae9
Date: Thu, 08 Dec 2022 10:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670493654

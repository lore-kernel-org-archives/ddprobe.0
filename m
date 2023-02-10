Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E66B7F4
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 05:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD0C7C433A0
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 05:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676008385;
	bh=16ac+VeGHYSQw/x3pfkJjmHYJ9wpW7lUGCTaEEZ7Wus=;
	h=To:Subject:From:Date:From;
	b=CMQgSuO/UaK3y9lkZLwgCWf+e+T0HyVSWinRBb//wWLivdXAR5UGcqNNjcLwhe8Ew
	 aP92JXDE9SE8n7vsKI1zDnOCZZ07OPdx673L2pp5Ri4bUdypya+709c2dBdm9e3/vT
	 KvhAfvkwyYbp/fa+5XmyGdV0hjC5t1zDxOlx2C6YPdCU5DmJzeySDHZSnYbieh7TDk
	 gEwb1uOk+t5Argqrk8vQxrFTOzhIaLrQ1eJs81MjspoMyNw5YrVjuj59X+uSHrC6th
	 viWK1FeoVy26ZC4WJEb8HLYbKlqAx7S/HFlNkrSf7y6cklkZ1BxA9xiu7X/IUIan6r
	 GsEf1Q5pBZoCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C212CC636CD
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 05:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167600838578.12797.10658021156650297700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c693c5405692217be7de8ce7d52af8b0ad7b310ac8e54a3af095676278968f9f
Date: Fri, 10 Feb 2023 05:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676008385

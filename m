Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B34A7F
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 03:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC868C433C0
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 03:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687750988;
	bh=FvgwDwYiYc+xT5/l7NCd6Nl1hUk4F64FPTtMdq4GmE4=;
	h=To:Subject:From:Date:From;
	b=O9LEVdqu+IO6Ntzupmz4PdMD9irjxr0oC45GDsg7Y1cvQkAMx6dc53hjqqgeH9BwV
	 cnFqmiN9OyJMm/6f+NjSLnarHK/gPo9LzPTc7xasg6k4muUdKk7wXRkuLlxh+Ym71t
	 Vi7B5VRvTXyW3oudhYg6U6+5fErJq/08MgkW9dfnPYeTniyN+shPgPL4OtPH1fziww
	 P151EBkj5rWX7QKKYpjwCIeEilkea4OW65GtqMiqfL4+5HG/+2ihR/K1dzbMSYMt85
	 mVemiOIwcNnbhDrc27kQY9Zp5SVY+xBZGy22wQw8jPU9aUN/FTdN+yWj+rbR2Dc6Zw
	 M2KTll9PLNIvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4CCEB64D7
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 03:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168775098868.9377.17982145858315479957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 125750bae52febbbd6ce0e883ac1dd02b0c48779d61626b73e17c12f426cb3e2
Date: Mon, 26 Jun 2023 03:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687750988

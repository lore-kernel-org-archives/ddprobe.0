Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53F8863A7
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 17:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA1B7C433C8
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 17:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692380048;
	bh=R+mo7nSN3ne1t4eyhuuzkgFyo3MAW20ERbfNOiGdOXE=;
	h=To:Subject:From:Date:From;
	b=Xc1wr/lLUe7HShPlVDoBevt0QLo4UuxKVoFg00BehDZV24GEz+YNBSz7X5iaASioq
	 xhpH/PrPf9f5FSxXexIAEzZxNDQUpgySu1aWfjLgdY/BxJoh1IwGXUq66M/auJOsCw
	 59xfw949aQX6y8yKaLyJPXcNE0j7XYvH94Ekyr8Mz50JHADOiL2HbUOy8LIMl33nK3
	 zDWBLm7jx0mzEOwTHZEweimFUu6aGO6niKIgAt0CjbsYXcG18hr8xHs9dXmIOBPDtA
	 zw1SJxBefQ/XmwvNbkKuvhQUHOXTdvXLWjnHP6XDKo65CZZFd8SfIZ9F7d0sPa/eEa
	 FoDb7eHvf1OxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC856EE4982
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 17:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169238004869.25463.15510537295741837570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e354fbd1a449841ce2175c625df10428e7e1f7d14ab31b18c9cadbf1bf392005
Date: Fri, 18 Aug 2023 17:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692380048

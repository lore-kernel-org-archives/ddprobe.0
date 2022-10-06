Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAD204A00
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 19:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B7FDC433C1
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 19:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665084653;
	bh=tZBnFKVTkBKcxAVtQAg7b4EbW7BJv9hPDIIhtP+47to=;
	h=To:Subject:From:Date:From;
	b=AtCCi5nj6qzu8zrNcvPOo39IlRlH7WcJchvn/KC4YVnwXLE5CQSdNzejtp3O1602x
	 6tfzcut0E5g6wsLRwPGc7FOuZU/ARqYDqjycDgxqLEAhGMjPyTt7GDiODZ6xmR7y91
	 /1Zc2QZLGHBnzKA4w3glYKRcyRxrXipTIhOMRN/IY66caru2G9CxYOoTDnPFeATF64
	 AchxdmRIP0etDkd4zctuwOOuv6XkbTQwa6hic/+rpSGlGAqfDxODfMyUIRC5MwbDGL
	 TnGpalghVjXLInU6INBerVKd8WxYdb4a5hG5CFWNnWuY16mMFAx183W1S28tTppc5L
	 UBCwGZtiNbAig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 535C7C433FE
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 19:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166508465333.5874.4177925630280919605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7600f6c141086c523bb88cf85e4b7e065364bb025078bb9ab4d411cef5079c0
Date: Thu, 06 Oct 2022 19:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665084653

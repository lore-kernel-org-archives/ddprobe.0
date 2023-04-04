Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352086AB8
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 12:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDCF0C433D2
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 12:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680613025;
	bh=roxNfDNs/ESBkZGajLRSuGrUc/nXXPGSVn5IrOyuP80=;
	h=To:Subject:From:Date:From;
	b=kCJ1FE63Rg3XXYYuaxlfQejV1XtHEcE2lc2B6oFF3J4ja5RvWNpxn7DGaJUDRzzyH
	 1Tw2hGVwxHYmDf9AxSw+ZImUiutfpN8ZsV2LuBy5cW4SZPnj1ZCdqJfgVsDTA8mxGR
	 GwYJeoE7jlQ4Lol4zZKanKlxc4HJRK/hBZy0kD5qnP3R29q4vfI2/bZQjXo98KxX+S
	 w3ijTRKJBja+9rXCUkq8rAYnRMdrmw36eEd7/qdNl6k98oC+ir2jyvf7x00BY/XnhX
	 GA455QdT0/53IQGEuAEw5fZoZYtkZ0u/c1RkFBxGCvccpW93H71LOG5dSMIzLJ0+m/
	 Y5THAksSaAS/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4806C761A6
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 12:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168061302579.24226.12078119895167166261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 567aedabbc49488309d544fbb9252fb70e85c9489a271ec9d4bf169064978d60
Date: Tue, 04 Apr 2023 12:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680613025

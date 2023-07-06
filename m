Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58992EA4
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 04:07:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4A2BC433C8
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 04:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688616428;
	bh=VC1iOJyoyC36PYmTVVpvLCRKfDvFxmFUPBi+DLQV5nE=;
	h=To:Subject:From:Date:From;
	b=LuesC8IuPw6WP1E3SqSj0/OTM33RO73r0NaXTyInsgdszX/WOZLh837udQCAvhnih
	 0L5A/55q1ch+7a+eDmaHwf+5lVX/WWw1sQNU7iRM7R611Ad51cP44gWxh0CTdvD5sL
	 qqJFP53elCTXkg1TaLKWAFmm99/X2EUp7bQeYNbEJgClIjhTQ/55PIDwJAwtM95lvs
	 ByAFhSoSwLiazqL4dZ/1GXhCX+0y0ljDskukVDIW55d8AdpmtBPAFyPo7PDeOzt0Dj
	 LxJECYFoY2hb9ZynWC1plvbmIjcXWdi6LfVWqvzYln9eGd5dwu1UCIZ9t6kyoCdo9c
	 fLlKyo7yVbq6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3C6EB64DC
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 04:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168861642868.24916.1664839663590324530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4bc7e28087aee687b5730effffc9e26de01fadcfc9b232e441419dded7120b4
Date: Thu, 06 Jul 2023 04:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688616428

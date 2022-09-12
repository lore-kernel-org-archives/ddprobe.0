Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D26773211
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 16:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78A86C433C1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 16:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663001453;
	bh=IDRRXvqUqi1+M8NRTP2EsY+yLdJWJ5iheX1HDvjNfIY=;
	h=To:Subject:From:Date:From;
	b=ZZvyJbXEepPq1a2sBDIVuG/XVSe1HOTXSmHH5+15IumBrEwUI+Q6oV46CzS/EgM9t
	 ezyXasCcwUna6Qs92H3xJGrfOqjFU8YAwsK/DHxWNRTeiQM9Zfenk1vGv421B8UTrd
	 GQQe6ECjOSrV9ERYilxBtAUyHvtr0Z/9dv1dUkeN9ZLR+SBu3W7LD/Lp3xAYBnnuy/
	 JfTs3sCfoJD7c48gQ1QgjiIGZ7LaMrMpBavqzPdCbjs3agtqwwsLpm//xOSQJ4Xs74
	 blaCqfigK7KZUidq7sA/x26f8s99VdCjcpQq4wLR6Ne7eBBrNexQ+PkcU4szEGPsgi
	 gsYa2ZXI9Vuyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56599C6FA82
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 16:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166300145334.25275.5457237641317537906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d62eadac60ae61c1127d9a3e15867d34e7c0d5d4cb5cafbf474e1f7c00184d2f
Date: Mon, 12 Sep 2022 16:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663001453

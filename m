Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDE6928EC
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 14:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E6F1C433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 14:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670855487;
	bh=HzTZ645ApS+xt+XUKUEJI74NB26SiEtpdbCN7IWSZLc=;
	h=To:Subject:From:Date:From;
	b=ipNTK69HjKQU6fN+fEATvBovX27FgLAi1POPefOYl1OrhxBTuynaam4tPTdZNYmjg
	 CYG/bg7tMbooIUh1E7PxNR5lvgyqHxcUKXI8dLPSwdbpd9SpSxckELCicHarpkJFYw
	 sM7M4UJeoOkLDLqQZu/XkqpZ6LMJdd2wcqLFvEEgefNP3cf8rwpw22TSoQCPLkG3KY
	 WjYe3fCtKI3OCUpmqfUvMJZhE1Fb0Y0SR0OoZ1hYihfZVe+GBrL6lPkJCYoVguPXWc
	 tuzeowOaZ5xF78Ua+3FMWNlPvi08/YHYOmhvOFbIoGnFi7nkzr+9/QCD7lKmIA3P4K
	 UqmRTT9dfozAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 632ECC4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 14:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167085548740.10434.3595916689541701989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea55267ba59083f72ca6a4480d9e46fea8d934033969d071014b2533c75af454
Date: Mon, 12 Dec 2022 14:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670855487

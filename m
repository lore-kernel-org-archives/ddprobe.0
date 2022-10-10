Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C36481FB2
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 02:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EBAAC433C1
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665370253;
	bh=hXF6ICLIA+Rr05aZabeCw1Epws92F5JbPhbRr8MEwOw=;
	h=To:Subject:From:Date:From;
	b=rwFaEm81So5uH1ITpD5p2xVPdRJtWpZ1QaNWS+B6ijGTynW4QCPWMmJmfAXIYfDPw
	 4w8fFf9u+UTKR9/qO4wfsMxixn3Y1bqW+tsG5zUBBBK+NNhVDQU0ns9rDS5gF5Xf8c
	 Mqj9RefP2ZEwQKufD8VZkDpu9rU1s2m+oGZq/rmUK0vpOSsBHMjDsYvJxlmZqkqyIw
	 QAIzaLZA592B4BuwWItFih1Sdip2kYGDzbMRkza7dSH4J7dZY73dhzbxnFSMjSft5r
	 m2i6v7+uyrTaqmLQSp6QKpQO1fYW0BD5l7+EyLTQZHtwx3XfEtphH7fLMDXgE0/uow
	 qPvWQTo6gFbHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51867C433FE
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 02:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166537025332.11034.5309220595327637667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e802a219dc6758c735af3adf1a95c4c76d2b6f84ee52aa1e7306c75b41824ce9
Date: Mon, 10 Oct 2022 02:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665370253

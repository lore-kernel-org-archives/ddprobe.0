Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA7C5748E
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 18:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DDBAC433D6
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 18:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663698053;
	bh=F65/Muvi42S9CQVB64jBnQF29cs2cjRRB7Hc/zHXEUg=;
	h=To:Subject:From:Date:From;
	b=Aq14sba1YuPRNGpgVMudExci579EDRFwR+gjbHVFgm9KRJ/tqxY9TVp7w+hoR3Roq
	 d7OWjNboLyBNs4WcWvKI/e4OClGxdyUJYmDnLkxTPf2QC3RNEpCS9RTZw82opoAJHA
	 SOb+ZQT9xTNWm6Xro+5wQF/kD3ITLyBLE98lP+YrO7j/wecOykaZD+dH3VhbdQCLa/
	 YmTZFTxtWQUaL4Ca5ekhKGyjrkPCkdOnuOXw/GURpgovrEWr7y7EMNAYYMcMAVO7lr
	 D7JV4psvdtzhD4PI9Z3BUlBiCG+ErntKnAQMFU1e4qCd2cZRZVm9Or+0bzjKoBgt+c
	 RBeTYHiRSsdiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5371AC54EE9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 18:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166369805333.2890.5235683697574198462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a6bcb07f757d14a3536242c42f12be3296e8cc7dd53afd22b6982eef6910aab
Date: Tue, 20 Sep 2022 18:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663698053

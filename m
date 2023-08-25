Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FE20649
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 02:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD176C433C8
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 02:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692929648;
	bh=+13YtwUlBq/fIq2pwYY3AFlyxiK1J6x/sy9sIM9HaLs=;
	h=To:Subject:From:Date:From;
	b=YTOSBZGiQEn+eWsB/WvxXlTvfc9y2Q6qEnk0dfo1xJycADoebcTEACPtbm2v2Qqd5
	 UZKOraNQRH+bm0wyH2HtOAs86X222D8AwlNg/ZtuAjniRT3Nzlbe6BxmxQ+Me7xE89
	 WKxKOKzeT1Div1z7Qsm8ctz5zQE6CZRmrnnbH+YSAEr9EbouyZtEsMqDg2pD+mWG6s
	 NIm/StxQioJr8q7IP/qsjkV2M+jTD3CGxuEBKd8oG0AqEyY76jd3CjL3N4ZQowxzCb
	 u2JWVpfo3vpWBYk8NjnPrRU6e1T1Cn4ErzSrBVx/G8AIvmnMTrElgL6Io20mq1cFLW
	 okGSkoFUd6dmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFEE8C3DA6F
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 02:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169292964870.31277.12416483575142386715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1bf35b0a843711b1d7a263160dadfe6583322821a37f7d42a607306eb703b61
Date: Fri, 25 Aug 2023 02:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692929648

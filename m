Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E25DE1108
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 05:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A28CC433D2
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 05:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673846487;
	bh=6jcH/JPpmnLhJgQy/4sXQMJBknLI7zcXJlCRqse398M=;
	h=To:Subject:From:Date:From;
	b=btWQ32tpgYvpMJqWPkfAW5ZzBPsueWksK+Onx5RW9WXZUbxrBYh2eIFvS0Z3qSIEO
	 6Pg+Gspp3cAdQlL22NgUQlGSJJZSvXWxF1EGBPtfXa8ncdbDFC6Y00omAk8D5de6hv
	 +iFcwZIZgMGf5Hj5LoGQQivTOZhXEVO1ruy0dYErIv/6/JD2WKpmeOu3iI0nlWhMo9
	 tdXGb3vONuV4v/extKCDqX1UAR+b0La3irMrYS8ES1nAk829jrxnd6EaPJmQfc73un
	 PMilbo5vLM/aalZIIphcNEvse1c8RvZyZfADuZA9kecz8LrJDnTPISq/Er1BsUxjNP
	 iIA8scVf1mDjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B2B3C46467
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 05:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167384648741.32353.1024404384905174970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8712bd28ffd8ce325f284423b767d50934890ed2c7994c4be27cd7858f785358
Date: Mon, 16 Jan 2023 05:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673846487

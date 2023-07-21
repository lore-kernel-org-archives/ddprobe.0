Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 514D329AB
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 13:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CADA4C433C8
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 13:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689944528;
	bh=DYaG0GVShG6+rr6QKYMKBbYqNJFED6kHFNdFyw1Q8iI=;
	h=To:Subject:From:Date:From;
	b=Y4tkySDqG5vEId4QCydRlkHA6QKtOGBrld3NU+YcdCjcfkNNHM+BNwnTdLEtHE3cd
	 iSXLn7ihTvwN6FuVGo3B/LFQPFcWRxekYC4YcBxnwNbOmQG7mco3y0aU9ueZvT/y86
	 d2oEEXRQyrUCDm1wx/3jSFZ3pTxugqKuTM8t3gVOJdGFGG6N4OujRUKeVE20iabiZe
	 hXTv/yzjxSJn04ewe2S/wQX4/lCA4qwYfnkvuD4G2L/SDx813KxVXrtG0RmwNhMeqV
	 5HJBHlSh5ex0hGcmwwX+hWnXfg0PqpgN29qtwTZQ2gxE+HLT5y1LF3FM5PNsdlnLPV
	 FYd0ZbTOIjxyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1AEEB64DC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 13:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168994452868.5478.6039020115000307560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e75c1a68c3401cd8c56728e7b3a3220495126b9ce296d71347ddd91a870aaf3d
Date: Fri, 21 Jul 2023 13:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689944528

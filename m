Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AC2A8BE5
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 13:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4774C433C8
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 13:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687181528;
	bh=zO3oO3jsEnFH04d7HBBtGs3V0CoeLYTIvCzFEQnF7EQ=;
	h=To:Subject:From:Date:From;
	b=YZhYI4TnkcrmCPEz9lnxUyjnODdzbLUgltOv4RXteCLqvC4rET4W58fWxc1sxkqp9
	 jM7oLUGsHywKL4tOHHDXlz/3sHGZvHhkFDkAtYXplAHmJP/zjfw8mwZkauwTPiFUPE
	 tpNrI1SW2F46angwA6LMZm6HwKm+6SunmCvlxR3jBFRJpcoAdHPab3QM27HsywnOts
	 w3TPc2OD83wJPUTxuuyXR4WEwOyiMiq0qmQ+OS2grO+2YAT6XKQtixY4vVo0OeTjUP
	 haVvj3jMRsMbtZQvgvEhVb/x6Yzxq98qmRcCyOPopSu9zGw58orhccJjjTKJRJeeyb
	 BpnYdMl6Cn/gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAB1FEB64D9
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 13:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168718152875.23096.7288072043710172197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9e70704037a80a7c568889c7334c9fc6899011ffddbb201da3a92e12002db83
Date: Mon, 19 Jun 2023 13:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687181528

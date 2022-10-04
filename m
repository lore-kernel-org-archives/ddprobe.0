Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7E517B
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 11:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DA73C433D6
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 11:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664881253;
	bh=LzYMyqMx48C22FDEpKkvB1IsmnBEAC7cMX76wlA5x30=;
	h=To:Subject:From:Date:From;
	b=K+kbOaWMc0CNVE8EvvNQn4MEIfZ0NFfpbnsDHjIOUMva+KtUjUHJHJapLKpn4KCMV
	 /47dKdkVtNLG7eKNEXY/Xgk4CFv3Vh+KYrcVAqbdOPA0gpcs41uPMlKyXkPwBkRJ7L
	 ysMSOMRIPpeueUkmI3xCFvBPMWE/VqdR9jzgY8sEvvE611S7FAEccQqWxSIrLg9Z5V
	 T1QeWHAmk8v63IRZfaexg98To6z+rw1sywlgF4WKcCAwGQuMEyZUsoz8U1sWw8ui2l
	 NUUi7N4Bb91jrdY5dHI8XPpWAWUn87eaRWW2sM3zPvi8gIcn09MrBzsts8jqq1KWIH
	 xO/8OimZWrzgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59AE3C433F5
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 11:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166488125335.14602.14324569394475616591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49b7bfa9aee8601a79dd93f4cc3555ee02cad4cd67f8c5c3bc270bd39d9139fe
Date: Tue, 04 Oct 2022 11:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664881253

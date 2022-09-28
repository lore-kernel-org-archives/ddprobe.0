Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAED87B
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 23:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B55AC433C1
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 23:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664406653;
	bh=+zJgGzWI9+tX5z9GIZeZrFjCM3xzRtjwTzegNToe824=;
	h=To:Subject:From:Date:From;
	b=BE2qLO892ZHG1STmsrtCciLTwRr9ylfXEnOaADgjVDtnZBMUe7pbc/xPpLBX+whAB
	 NDjw14KM6cwQC30JRekBaYdNs6ORObDSzRGFFOhDgZwxgD8QdPIs8VXjKO4bp6St36
	 m/EUWeprbIC72t5L4qjrvd1RbtAOI5BY0FUNXeKmIgXL8ch/wuLbH9yNrUJCH+cXTw
	 pgVQvFShBriZkm6c6HT4Hc1R1FfaSasNW79pBu0fAJXEiAZjw5OSoaMQUFFQczoHpH
	 PU/6ST0ZxBS8r1jP8U0HiZKtHfbWvYu1Kf8zxYiwdWda2ohnf27lsocar6jLc4qIEB
	 7J1Sz7/xVaGag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55566C04A95
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 23:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166440665334.4646.714607307977185385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e67cd0c0c8ccfd72e0ff7a6ff2492e0e600655f315b7cee187059e9a404abec7
Date: Wed, 28 Sep 2022 23:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664406653

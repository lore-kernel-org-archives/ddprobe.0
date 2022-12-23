Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F271615BC
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 04:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A510C433F0
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 04:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671770487;
	bh=zXM3SHa/u412CqtsIgRDRRqPWRyAz2OiE+VZ+zePg6E=;
	h=To:Subject:From:Date:From;
	b=qKFgGT7HJNXNPLuo1HN/EQiMvztugasD4djUREzGgvks/W6YkmhiWVprlxLOp3bVW
	 cVYN7rVF9zTLN3crGNVm12k57EG9H2+OuqfQYk8vcNXldnJJibTrzeG93OHo42wYCE
	 ucNc0MDaKF9u6oWdiMQM3OhTc+VRQPkMu67Bg769Esj9+V13tgwqdSpSVfxDKBjcd0
	 qL11e7/2V/N898oKjMQSK7Of0Ls3SAXvEOIRxmzKTZHOG3+xSSp1s5CaKS6SI4srjf
	 IpSeKhRQYsdifsPpewDsluxo9fsysDGiIRO1hY+8Kg0v4BM8ii6Faczc5K2ouDknxS
	 Ls3U0KktmJ9Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C485C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 04:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167177048740.5407.10906246870798862846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e06aec00bb0434aa6dc24205637c40338fadfd35e5b14af37eb7e134886c8e6
Date: Fri, 23 Dec 2022 04:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671770487

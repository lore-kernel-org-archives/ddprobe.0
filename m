Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58B031C13
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 05:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDAF2C433C8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 05:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687238528;
	bh=PsiWLyKL/fc4vCJr3f+dBGL9Ubp2x0GVN/LjKHs1kWU=;
	h=To:Subject:From:Date:From;
	b=YYuaQM8FtJp3XOnTtFH79rEz4SdtjYVrvXhrfnqlELMExZ0b2hnpPWGZFWiZ82iBZ
	 uvj7Mk2ekR2jPSyv8dn4SHAp71zTYiXbDtdDIr2cVqmyx+dg2o5tw1XUPkTiDX+X/S
	 kFBbj3It87inhgO5HQSBFgIMjQhOsOvJFzC/WZzZHI+IGdF+vh2eOcc9rLUM9183XG
	 wDUuu5NY0IeHzBeUeUwfMsmZr9UNGWtGvfZDZz+6NzFZ5HPwCxLo4Ma+DkucQapg2P
	 EbWAeAuUVXr8JwEl2eGOwrlwQwcWJcKU9G38JgF7EvXFUgbq57P5D/rh4NGqUr1RlO
	 ZZDzJMSCl7QMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8CC1EB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 05:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168723852868.25200.16747970593331674837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 895eea702cffbd02e722bc32e498e774fb7f14a654bb8acfb76b17e921460830
Date: Tue, 20 Jun 2023 05:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687238528

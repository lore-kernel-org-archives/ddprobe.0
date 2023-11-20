Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C391849
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 00:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sgMFxq88"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87CFBC433C7
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 00:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700441896;
	bh=lleBorBz3IqS4M7myObJleN6v1SMxuNOefKvjFu8ZBM=;
	h=To:Subject:From:Date:From;
	b=sgMFxq88LXJTmd1PqV8X8BNRbAR27css0pvdqrZSm9Sx+U1Kw1+Gf1q0eh44wuVge
	 rIuA6Wa4wsTUtwj6hYiSnG/V/d3MwfhKWbVJmsjjgYGerW2B79aIZ2JNOzHOHFSbI4
	 ylyiDT1HIB44GimNZu5CR986JGmcmcrja1lasVmxztdligPL+mx+OFHe6uAhIu6RTY
	 7FhRbC/vrXPM6M8MyVOsqcpVPwPdDDMIFxtPSIabUihmdTpN3migfOR1TkxPCAtS1d
	 FPzBS3Uog8iKTaI6m2qzjj2k3sNhUeWaN+FqB8BGhiRywu4GEqUANU6JJBjLUjahqb
	 5PLkBP0ekxf3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A12CC072A2
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 00:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170044189641.29139.7107368331815914599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c9a4c3ef374b1b5d32c07741a9985cc671cefb377b41fa43edd6afd85ac0047
Date: Mon, 20 Nov 2023 00:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700441896

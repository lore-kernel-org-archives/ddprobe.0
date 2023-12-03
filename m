Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E41D41A712
	for <ddprobe@lists.linux.dev>; Sun,  3 Dec 2023 23:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KPL8CeFt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D7DBC433C8
	for <ddprobe@lists.linux.dev>; Sun,  3 Dec 2023 23:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701645496;
	bh=OE/ypNWjH2/0McuuABpuAeFwP0p/5BnFa1AAech6CDE=;
	h=To:Subject:From:Date:From;
	b=KPL8CeFtWiwpub2TG6kPekgB3FqAVGS8EgstAs55v2kZx6XnDKGF1tlIR94xFMYTx
	 k6bE5jwLkfV0UKzNPCBu13dTPyl9wBi6WLULMy6V7/PxA7sT9DhYfEzhQjnYJq1358
	 XrsohKmqQ6a/dVAKYOx1m5B+rWP904xVVRK9BTSG86yb+c3EAsjEkjCoRfrgR145YQ
	 MrLad5y0qvtsghDhAynau8yoVnq3YIWGAy48o98hPz0h62p3AeFEI5M4hcdB1qC3dD
	 +wrPoMXydt0Q3estGQtx7W+r/nfklPXejwR/fcRPAM8v0Qt57ahp5mJFdx7qUXny8a
	 Rf6/Kc6XLx/sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63B11C4167B
	for <ddprobe@lists.linux.dev>; Sun,  3 Dec 2023 23:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170164549637.29816.2486292278889452136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd258c8a51e0b218a80de3f7977462c2854b68c6cf0670f5dd21789a64479e07
Date: Sun, 03 Dec 2023 23:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701645496

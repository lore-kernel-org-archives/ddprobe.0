Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0EB8320D
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 10:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DE52C433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 10:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668766854;
	bh=cBSN/KQHKgbkfSkH75TdYDBUvMKO4JaC+6yhUvPcZ8M=;
	h=To:Subject:From:Date:From;
	b=LJKzJF+mWb+NWxih8yCpLyeMa673rDM5hvLHsiwWdKFBZFUDidgt4NnR13ZXcyALO
	 ryaGIVER64BNNNSb5kvjdHPY+Dll4AH39K4J93qVX2/gw2cfkVm71z748HnE2U4jp4
	 kY9atmA9LfjOyst0W5BpkFFuMJPdRbcK0AKaCQOZuujiEohj3TOfoab98GHLJCY3M6
	 dKDIQbCFoDPLqfXPuMy2xC8AIse8F1Imf4FzG1+aktvJbsFv4gfaFy1dOGHbizkJTg
	 67eatsuvvI6JHCtDWGoqF1SLaQ8dr0yKA9PJXMbSe48YpySAvw5sVMZF9rNSUGLOze
	 lBVeWgea0I82w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5490EC4332F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 10:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166876685433.5089.10915506102028649808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02688284dd785563bccba07d24663867b70e6e0c05171a33fe52bb1e90e4abd3
Date: Fri, 18 Nov 2022 10:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668766854

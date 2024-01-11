Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED034F882
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TUMgJ2Vs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F73AC433C7
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704988096;
	bh=JM4UADBJD+ziTUOSJ/G15aBrj+K0V0buBwC+x5lU1lQ=;
	h=To:Subject:From:Date:From;
	b=TUMgJ2VsHr8Lm8cEhCA/3R+fb8wQWrj5906oItcvZLTqS50fopwCjgCYa86hhcvyQ
	 SgVW9Ka64fNDSTiVAPvJ9IUVyiScyomv3z1cp0Mx/zkexXZXWsTlXe/j98YhHersIV
	 AP0dF9CbbutCZACl9ZW5xZdgrS1zLEdqBDkxbeh9TtKdHuZIzpVINN6SFHuC16V9gS
	 7A7CuI8TuPihddXcGxkQPlesRDAi4M9PJxviJvANPOv0sujM1px8rGjjHM5twX6XUH
	 2Y4yKRnDvFxYfsQzvCAWoEyB7oaFWjA2FDaVqShoBdPzQL0LTZ7+bM4Pws+JP+4oS2
	 qYDu1TQ3Zzcng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E7E7C47077
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170498809650.27921.18186115027355629087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d0b526ed7af745949246dc79d16c7aba4af4a27aba8c4edc2e0e473848be590
Date: Thu, 11 Jan 2024 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704988096

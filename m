Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0849B15AE2
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 06:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u7qyXkDy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81431C433C7
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 06:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702364296;
	bh=v4TwzmdbzUtXpVRRaTgdRCmvf2B40gOHG8YWHbMe7KA=;
	h=To:Subject:From:Date:From;
	b=u7qyXkDyKPVa1rym8lRmcVgt3TLyxlDV454khI7iu1F0N8Uq75Uwu1cot3vxJruyu
	 XcaLxfr1aeEWdXu3A/Bz8jz9QKyWAvN4crGNOOxqeasKzPxKsH2J1zc1cpNyAYWZ3z
	 xUIn26CPpRpyWI41P3cjCBRwvKxrXw5sHqUFx2zqO2Iy5zMqs1yM7Z+hg/ouBmIwjC
	 nyMhnWTZFz1yt/2hMFK11PzGB2NelJG6yHeT/sF9kl6HnlRTcmh0Bb2gP5r7cJ8Syh
	 vLTeWqpW9wTEwu1PrjNShhCC2ZHCMzDnm4JOsPKxuUZS8WwFhEqWe1fnU0z7QDany1
	 /R1JLlHcZsJFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63EA9C4332F
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 06:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170236429638.23335.3861788193396500172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63b5a7287e77b47130ff53fa15839d1448505990e3875e17c4ebcdc5f43507a2
Date: Tue, 12 Dec 2023 06:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702364296

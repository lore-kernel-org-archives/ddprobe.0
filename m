Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B07A2AEE1
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 17:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779037234; cv=none; b=TaGsIANlNrdp1zTwwRiaIaRX2f2jzkx52JKl9vfgKPsBQHaQ/Ml+SBA88kN0TOgA89u59oM/EkI1aK55dbM0JYL+M524z/3cE4asxtHSB6ZT4ljh2gEX8+UDGI7Px+xs/uhlgSsSKXZhpo0s+0+MMdmk9XMVTY1dzxd+d6cwSz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779037234; c=relaxed/simple;
	bh=1bhjB2MfiWVLgIDecSTiWQ/dG5w64M1YAr/ApKrZsuw=;
	h=To:Subject:From:Message-Id:Date; b=YZqHav2RV1L9Bz5dQ4gj19YkhCW8f7ROHYSEzhrSFwRr0GNCaxyS7rww6tor7/MlID0lfIcqJLJFG3BrTfCLQqx/xwNcAxPrnKduA3aP2Bnf9Y+Yt4YuhzOOZQXEGx04Aiw1d5Pk4hnXuFkPuYF1obTVQfPIIuw+qs2ALpLp0Tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bXc6KyEj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bXc6KyEj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0464C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779037233;
	bh=1bhjB2MfiWVLgIDecSTiWQ/dG5w64M1YAr/ApKrZsuw=;
	h=To:Subject:From:Date:From;
	b=bXc6KyEjvMqxWbQ0fbz9xbN7bh9LCb5BWR/gNQGHPGwMp/QRNJVSGoUsWptQiKQ1J
	 /lRt7yNcX4Fx7bgYTJhlHJ3RdIt5bHYNH6NrpE1QmDkPZZ1YZ5/rh+9+9f3PLf+2vN
	 F36vb7YNMup2mvvD2TkUtJinIPN3CGfXx/NBZJRSwetCQFc7U2rvP9S0Yw39CLPNox
	 kclUf3PYOJ1tsUvx5gBdmm6NLKdxk+mu7HhadRSsx8WbM2/dIya9SOT0zGLVQ8pwX+
	 YJbv9ckhQXs7VL/diOtI46zOT8g3M2dqX5g/bv5YWFb1KLbpuplGn78Bjmde1Dk9r0
	 lQshDq3afDTPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE3B5CD4F47
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177903723369.15412.12844880557697567664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd7dd2ab1cd4b228dd17c3798da82b2dac30959b41017b76e7fff0db434bf464
Date: Sun, 17 May 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779037233

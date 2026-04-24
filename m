Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2121E25DB12
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 22:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777071454; cv=none; b=jL35HMBUwCgfeh6BgBYW9j/RAIa3YKvssq/ldN7hPRsukkiesLgCMENn9OFrIrRR+p7sgN7rS4DZbCeW/KOVH+eL+XXI4fnXzyd314FHq+X4uc32Fiymif8WOXMGtyVS8LLLpQkYz3ntq3m7WunBBu+uiVpO9SvbXr/i9zsmyVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777071454; c=relaxed/simple;
	bh=Mrz21UA58mT2b0V7wncdWZEoWFm+mslyGp7CaP/uKy0=;
	h=To:Subject:From:Message-Id:Date; b=pE+t/VTMPesU0ICEyUTwfX4Wr2tQe5dAZyXkrKvAdQ1TeSZUOvqbbqCYmc9yllo3rNKtNk8uXUhvlrs8CvIjD3UTs8tVb80n7P6Eojl2Gps0WNV+rMDdLN/LX3yaF7/3RkMUDSWo5xl3yrTnGwwAzBXJpwzNxCrCoN/IVzz6LxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lgUvHKpg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lgUvHKpg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9383C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 22:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777071453;
	bh=Mrz21UA58mT2b0V7wncdWZEoWFm+mslyGp7CaP/uKy0=;
	h=To:Subject:From:Date:From;
	b=lgUvHKpgONzm+F1QhtgQFbYU/IHOq2XDxWsvneqbPhA4u9xfuDQ3weY542i0YWM4x
	 /7o6vdDm3r0nMuWt5YG+eFHZ29FXC0K20QotLk+0lWqshoa9sdiNpJHxsA+Zbm7sJE
	 amtIRgx7WmDZeM/iRIr6S+N8lgK0mpLV1/1cbF3LWPKZdZWCYb2mOztc3clWSxuetb
	 W0I5256ZesL05wnYz5tyBynaWqoRrlMA0QD3z0B5gUjsakSyg1yL2U5Go8syUCsaoy
	 EQq9zeC/7ds9g1sBqRTMdX4VAXQaFnUmqHXpKJL+eHq/KfkUim732q1jiDlog0Ikdh
	 VzpZFWOVD0XiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EF0FF8850
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 22:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177707145368.29573.12595378851556916937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5815f5abb83274238067df3607e84cb095156e83ead030251df7687f5ef72f35
Date: Fri, 24 Apr 2026 22:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777071453

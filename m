Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 707B913CFB6
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 22:08:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741558134; cv=none; b=WrDp1HlBbrVmw98YFyVbnhr02SMnUwtAmDBiCmabs82wpPpeLooUvvbfxoW9IxPuZop5cVfpZv2w51Pu4emdNBDvNl/Abb7ZYhzGiHG8aMBaIbxQ7+n1czMJWs02HldI0ShGvDHktJUiSaCRU6Yb7BQqkEOaZzvRq2A45TZMS50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741558134; c=relaxed/simple;
	bh=k/DNdx1ww+v7AIwunS0ufajtXnLqvNURSs3pNU75k+4=;
	h=To:Subject:From:Message-Id:Date; b=YnlhA37mdj5lYEfBMf/sw0MONlBkrsv7nYub+9uCBgiOG4lhhjdKPDu8EH8XQ97LZ5MUvLp7RNiPFfoiAZRscFnYaCnu1sqVl5IGb3qDuu7pqLN8r8tMCHRlxFaFg7VUROh2ueA2N+S0Ryqz4JcDnTg36hZwKWhn25p7wkxtRXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CtN+1VVf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CtN+1VVf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B23CEC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 22:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741558133;
	bh=k/DNdx1ww+v7AIwunS0ufajtXnLqvNURSs3pNU75k+4=;
	h=To:Subject:From:Date:From;
	b=CtN+1VVf1GD0AKHUEft3Lpslat/v0rse5hEK9DvjVPf1ryLw+9IE90aG2e5fD8oah
	 6vzEr1q71YSyOKpdihF9USC8Yk2W7Mu1kc4NnfCzyWvDn8GxmumFb989GiLzS7210R
	 ZZ/ABuZkXOBdBtj6T2HEkJdLZjdk78aq6YRCFVZM5ref6O0ji20i2xbFa6vFmBIY9Z
	 GW4fPDygtBpHCFmhTx+o4SFuq1xXf2YryQv1MxjZFZeTkLWLPoSCE5UT/Lua8AGnR0
	 hMSPcexJbVrNzei9343WC/Jo+0/F/QvJle31JuETJg2kd/AMVV5KxbROks8MIvgYdo
	 WvpOxu5UErJjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EB24C28B28
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 22:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174155813364.11575.1114719732624561790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c30e404c48a3d74c5cddfcae18248671adcf2b568481b8a925747a974f5f01c
Date: Sun, 09 Mar 2025 22:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741558133

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E18236435
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743586794; cv=none; b=Wv8/1BRSQhmR1qAZUL+gSR/vZDwdkvEQE/fUtAOw0yXIyogCND3O/TyGP85+LgJBg/U/CJIc4lLGumOns2m6jAd85Ma9syVg6oBGZGYqRSbe27vMF9QqMWOSHUxFJVM/ahq3LCUgTfef5JU3Hzxc86CEMuVsTx4XJVvbdrA8ER4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743586794; c=relaxed/simple;
	bh=FEo/CsB6t/eHdDktRpIH5mYoOAn0Lq/sVpL5ey87WGg=;
	h=To:Subject:From:Message-Id:Date; b=l/bU8cveTraXAzAz7GN/b3HPjwuddzevhZncPYy4ytCdCpJzr8WLdWbrm8/72Boe80EozUNZJymB+z1+3mBSloI3GUX3gEgS4nFveYdwodoBJbxbJtGYTxcFxxip7e1ePwgCs+yFUh4HBmnmm/MDLthlAIOh2Y70T4p/i+hluoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eCRz0TSe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eCRz0TSe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA4F8C4CEE8
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743586793;
	bh=FEo/CsB6t/eHdDktRpIH5mYoOAn0Lq/sVpL5ey87WGg=;
	h=To:Subject:From:Date:From;
	b=eCRz0TSemYUFD8GHB5+927DVQWr0l6zJ3hWrBmsHc5SJNklk4L70BQW33T8KKmjQl
	 2/xwRrgTpUPZ7/HcvYQB6fNCJwi2low3OS9skojaRRNpEyyDpJKiEEfK1/GzJ4Wplx
	 +V7hFEQcEQxfFAoRZPJM1+N+9Hsr/JmVpnph8ZD3G9dKW5s3Ei46YcjNNKFfMp7Bp7
	 UNnH3kTThkehdYo8W5sErN6pgfLJFCZwjD18OLvHQiyXxYx99wHJqcwszQ7Qi5MJ7z
	 JYLuM98OlTBJ/v/YDSmw1B+AD0bz0xc0UYTo/VuqK6BceN9jPR6oLwCXSLBFeebzgy
	 gjoHtVG3VAsMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2AEFC28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174358679365.21390.6214985724788477265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dfc79127786f534f38899b2ebbdde67fb248f612a32fd824623d8d7a6659da7
Date: Wed, 02 Apr 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743586793

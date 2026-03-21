Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE2C432D0CC
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 17:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774113293; cv=none; b=o8XDPzsTKNkO8iR6g3JKfhMZIb8svp5eY0JxSJVaAY8WNNmIoitBzOJvTElD/9HE474Z5La7yLpXnU1029FZBuuess3TiEiLxa4Yy7frj6mqeaHj5MrPYcMKZGMKOaF0mIMXxtd+gp7aVLhzUXgmufUux9/R5sx4UJedC/wzknA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774113293; c=relaxed/simple;
	bh=1NreqUdpErv4HFumjtaFv0ij0Dfb3MGEBK46MBzlkIw=;
	h=To:Subject:From:Message-Id:Date; b=ABOLwKcE2LQcl7s5hkwGgrcL5K8a36E5+42/qYfxHznZDcPxqrLH0qgWF0lZ45QD+dBaoiWIQsGBrSX3QbiCcxjb3b1yQLPrZDJi/XpHzAB3ZKAA8xMe42ZqAQ4CqGomFz2rQ95cLcYITXgizhnt1tX1OQQB5t7znanPGthhE0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HdmcUVi0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HdmcUVi0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0A55C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 17:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774113293;
	bh=1NreqUdpErv4HFumjtaFv0ij0Dfb3MGEBK46MBzlkIw=;
	h=To:Subject:From:Date:From;
	b=HdmcUVi0a+YQNWOCLelnlM/QkyKTngCzVq8efTbE+mGXeFmPK3+RovB0bfZY6lOig
	 ywuNYCU7Gg/tV0o9umqRnfL67t0R5SCKaA4+VoWyvSi+uldnKp0Av4PAtDGtffohiV
	 BUX6f5F4kIIIvRaCNMM/GJ8Vri6sJEiB2pKp/rBNit5MEVEdYtcMNpvapcnkEoRsUZ
	 j3GwZvssZu4GX2mdXOT7taMrxtxG+sFI39a3QZV0ki3NM/86FTqi4yAXUKL+fJxSBF
	 gLwdjGEhrYqOiTOOHDu/YjXRjCKup+JKFFXiMGGcWyKFv1JnPbnatBBb2OH9+wRSSy
	 /mAlNWazxCd5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FF641094489
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 17:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177411329362.3567.3595344547780601411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c475ecf0916a44f9e239a322b5b0228d64b20484dd217effabdb6d0d5b541e6
Date: Sat, 21 Mar 2026 17:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774113293

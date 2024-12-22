Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A982594BA
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734830754; cv=none; b=HyeSOrjZU5urUshxlaRUVy82AbE80Tq4Bshe4rYCe174yKdWZOEbeB+Lnu5U/1ZWVQGTQWDxfa0H64/yN50cIcEjPvNbJuT2/mmKx8ovSIh3IpM3YcK+5/tYCvorA4gsNtLvDcAMPPX1lQ1+LNssuQ+tr2D/Lfsnb+oltfyAc6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734830754; c=relaxed/simple;
	bh=LyLcvKlok5K7NcNB0aCv+vVMTqQ4O6bVZbQ5G52n+mo=;
	h=To:Subject:From:Message-Id:Date; b=kWgBDqrLnjhDBrptTs97ZgJds+5vSIYBcTjT2+MtivMVxhPdgJ2QwOMvZJL/nnKtWWEGCQGLYKqx4kL+TJyBcTfw9T2J4LNds9hUigODQBblykbt6Wy0uEELcXHiFERg5qMEEyv4s9Ogq4qh6saRiW+XbEEKaUiBeR4RBPdSknM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UK0TR5Zf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UK0TR5Zf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB36C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734830753;
	bh=LyLcvKlok5K7NcNB0aCv+vVMTqQ4O6bVZbQ5G52n+mo=;
	h=To:Subject:From:Date:From;
	b=UK0TR5Zf1MUSRAPIKXxHq4HAxIOCFnGf0V53kSNnEPY5MaukLPXDCf5rRXUN/TTHC
	 JjB/nJOTsmRlMJsmQPi6/IiNqq5JVu8Zmh88kW0G3m9FViliWDH8c8hFQNqqRR2mEh
	 kdUhWTnDtC7eXsfLczIqFl3fEAD5I4RsoVHeEcQcMX3MrrvbqpU2R8D/0tVaVAIR7G
	 S+J2WLPvxyvmqDpTL1OofWB2w2oji2Zjlgx1UyP1kCFUfXjsNJHoFvnK9qZCYcSrLf
	 DjGH1PBcNZVkDJ4EoahD8a58omuV24b6WKTwv7p4IUHdtp1+yI9K+xiVforD9S9/i6
	 xdUBtnab0LeNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9946AE7718B
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173483075358.1450.6444405666806596781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c087c4724c42692980e04c012edcb7a44fe2032cceaf521421bab6fc7784b05b
Date: Sun, 22 Dec 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734830753

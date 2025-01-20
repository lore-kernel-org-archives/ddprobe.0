Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45AB01E32DB
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737399354; cv=none; b=k5+NKprppARfVAowVAzVuMXpqR7jrh3jNw3xtQLIGSmdQSwCKITDTy6n+cIchVWTMjFbYVwAOvOa2YHeVBgWTKYEkzh3Utw5n9oavnMYi7Miic+Qz40kXu/v6ubV6EFCW9EbZMYGVkstcJnsDWdFSWhF9Kge0LP4zuUJAhge+bY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737399354; c=relaxed/simple;
	bh=DWM0+Muh6BFwK6v0MwJ8MilMPHuEEvlPs6dlIIn84tA=;
	h=To:Subject:From:Message-Id:Date; b=Y9h+pk1Wrih86kPGry51QA+Qn0N7Y0f4CCve27BLIPrUxPqCH6Uvi5V22pA1xmpedi3Hy1HnLx3vRNxpcrlAAf2W2cerCAmWpDywcWMuHCmNTo/36+ACretsOmpkyHJn8xnKCOKzNiDUlKR9VTHsGTNYciBs84DEFoxh44ImO/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KjZQcGWZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KjZQcGWZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7744C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737399353;
	bh=DWM0+Muh6BFwK6v0MwJ8MilMPHuEEvlPs6dlIIn84tA=;
	h=To:Subject:From:Date:From;
	b=KjZQcGWZDYz3jKwjc+h+UqhhrmtAG7HAgaAH29LBnHGCZHzfXT/ZqURVsWtkQWCMW
	 yuxwJiAjH/cVaOXNOId2pVZq82AxZ5PgQBL4jTV1DRFX7/QnoqxjGqYdG/mw9jyU3u
	 /56a3aAYdXR+aQ6fLjzae6kt7HhsQPkr4/TUUiV5bXheKoNDgfGGP5yYU8jhYf5aGt
	 2NirKh0oMd+dxeCzv/k4wvjxPP/8D7MGJkcLPWYELiuIkI4YooEtieRUic/gzYViyD
	 oC4yC7ZEvwuvgCcj7orgxfn6bQPrUgtHSxIRmb1vrc7we1B8NgzRTYD6xSLsuFDbue
	 CmeMZlnfFbKmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922A0C02182
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173739935358.26314.8207598056248735998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f482a7d54b71ae4a80d9b7372dede632d1d136be496228bd96431203fbb66581
Date: Mon, 20 Jan 2025 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737399353

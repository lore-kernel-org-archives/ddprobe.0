Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390391EF0BB
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748348394; cv=none; b=Mn9C/dClMD+GqDsJYfZ/G8MuXUbmOIT/uViuLqRJHNXW1mvDnqN9iO28DpcDM+pMttw7gGjQ/GSPWsV1sWhpI0SmgyHQgo5nX1vN+bqowJ+jme8Z2oIhExjKhI/V8rHA+91ZA6365lya7nzJ4HGhb0hU5KNkEK+8pBaeQ1x++Qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748348394; c=relaxed/simple;
	bh=Cpyya3xDhONTvRjJAnjfd5djBhz1N1QkSsc175Zu3p8=;
	h=To:Subject:From:Message-Id:Date; b=PidsAciGFJiotD+Z+8ul7mnvhx5Ssa5Ha2GJjJN3rF3h2TyP+eUsnRcvOTad10SRwb6hR6U++A9624PZ29Xj6stNeOV8yTGrK1VsZ5jIQK8w6ndfEbQJQ8tyfxC5/p5iLyfbhGlnVHBmsnVUfPk1xbFVVs1f6S3q5HKrWDnkXPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fg/xUOTj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fg/xUOTj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D0A3C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748348393;
	bh=Cpyya3xDhONTvRjJAnjfd5djBhz1N1QkSsc175Zu3p8=;
	h=To:Subject:From:Date:From;
	b=fg/xUOTjCYKLrY7Ck1JiLv0Ot4V5fWtAC3IKlpI8TR2sbJNP7ysWzbWVf1GnJfO4V
	 FcA45NhQotmxu6RzU3utuJZy+y5aqlXt4sdvN3eguVcQ/25JxfGX/RpswXe9psGmob
	 wgu35RFtlP97jMrG98E1F32cDiexf9zKxbLxeg1MpDtpDvVGWfpBztYvsLSKry+GwF
	 3GRbnBcIjtltUf4yW6YxZx8Fl3IiLI6qs7s5RiklLby7KeGuFXuufrhgSc/SSdZKXy
	 DSvyuXbpOV7c0Wa0iw9b8d8F7bo59yAT11wS93XgkE6lGj7lw78Rf0teKM9RLb9mwj
	 OVsQXdcyJ8m9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4ADC54F30
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174834839357.19701.11002814240465702123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b0b5130a35ce9ea22a09b990976109d936137409072b30c94d7510a6d533a62
Date: Tue, 27 May 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748348393

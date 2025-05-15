Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 314AA1F4CAC
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747322994; cv=none; b=CTU+COeuQgWu+3fYidKKJtxaiojHnWmCy1fzY/knie9OjlUowr2SpHNkf7EHkgl5TI/kVFRzr7ZjeG9x3k4MvZmyjevfuqbTEGM1GA8EUmhVsIQRhnMs7TWvJ4pSHaUNnnTe5UbkwBSjhW7bjjoeblrJAf0vLR6QdezRakG5eU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747322994; c=relaxed/simple;
	bh=OTqhj6lWWieKz8hGEPqlEcB2r97fHqN+enrrkhgZSVw=;
	h=To:Subject:From:Message-Id:Date; b=uZ3BJ+Ao4l3CdCTRF9j/TB/NRgLXn+u9JFRvsmJ7u9xBzGwNNS8C3nJANvoG9P75b9XaArscKJUsXP1oCCKywlEYLdW8PL1ELNhBZQanLmqqZs+w+HtncM9jf1cWZZmAtDBfZoaHxOveeBJ/vg0pnWa5oG3UbsLJN2lSksSp4W4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k8LwsdE1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k8LwsdE1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E66C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747322993;
	bh=OTqhj6lWWieKz8hGEPqlEcB2r97fHqN+enrrkhgZSVw=;
	h=To:Subject:From:Date:From;
	b=k8LwsdE1LojiNEbZ/IohUu65YEyZ1/qIISrrXgwp+QXoAWuT4jUs15JRhbA5/WjlL
	 scCljtFY5TetJg75xcf7Fza6gwy+M6DTep/vtWrH8RJ5NusmhRLhCJBerZppGscRxf
	 Zc6GNupMwHsY/Gc52NvDxLSjLj+9wZvqBTRb3GP/Mulu3Es4sz2M/4S+GXDQ/xnbSS
	 bl3bzHWLx48eFBM7isZMLpgmaZPRY8mPpNuIYAbtiPmuLqMuLeoJpnfu9FgQuYL6uO
	 8Y1BhYmLrXp9TBzMjDCr0/T/PPT5hrRHP9+x4IkHlJOX5Y9qFVjJPOxAcEWqxv6aTN
	 tEKwD73SP+43A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF39C2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174732299357.13555.6713115032344492426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab558c0f048a2305746803e674e84f3cf0755d7874125a7f6a7804af19a4bf75
Date: Thu, 15 May 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747322993

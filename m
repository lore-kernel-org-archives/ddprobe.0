Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1799726289
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724598954; cv=none; b=PlUwFgwWEQXUIGaI7CaK3lvZAdpA5DHWQYLIzMz7d6y7IpNsefS6eOYzJCONom/8vYUgrcYf67NwD1sciyZTIzG4GFnv9XDM4dz1o7/J0GT15gYl7KS66/qjqNPbECCj8hW/hQR0sfQsg95IfAjFzIgUcgRvxKbT1+HjtmtiU+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724598954; c=relaxed/simple;
	bh=q9X8IqzA+MyzWXdjZ/UxhaDblCH3JYow5cyZRMKtIrs=;
	h=To:Subject:From:Message-Id:Date; b=U/DTEuSArdp+gRlXI+/Q2mVZu4EL4Ob8Gk8EFb24BwG/Ox1O3D0KrL8zHGM7wFwJEVfcT0dC4+YwvDPCPjYs77I6hV7jVJFirJnIX9bgwsveaTAbgPwavW5GhToOyrUTA43MoLzCOhSG9ilo4gS8jd6BKrcpfcW+6m/uA+2zqos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UU1qhkq4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UU1qhkq4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0254C32782
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724598953;
	bh=q9X8IqzA+MyzWXdjZ/UxhaDblCH3JYow5cyZRMKtIrs=;
	h=To:Subject:From:Date:From;
	b=UU1qhkq4U0bpBchLAXUxkKVxcPjV4tAkJEGlCjSWf+ZCo6fNxorPAEEMs++9ZBkqa
	 j4Nt55bweUa1AjAVM5oWKNd+ZF0pD4wB25pzmo0v3DnlCRQGYJJnqF9c0IW/gkLLGK
	 ia+ho+wZBEE/Rni8bQYHk4M/EHMBIFf759fnyY2IXRuTgAy3vKclm6llkHDsqeBiWH
	 LV6U1MKejbbtnxx2EfUaPI0gmvLrSla4y0Q4qebzfyFx8zB215pjLo/8u4xAn1updQ
	 dHX8Sg93rLtJUbTCOurEhdOXTZXRX7IzSb2H8LQRZ1GjupYPvJcmr13STaNMRBVui6
	 5MXP03kkV37yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1614C5321E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172459895362.18179.1254305111657981688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 460adefe980d115c33cf0ee57025cb15077f0868f312fbbbeca25fc42b5045c4
Date: Sun, 25 Aug 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724598953

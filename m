Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7344D2D3ECF
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 13:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782740914; cv=none; b=rZyAuOC7m0SInmMuQbe5HpZjnzGghuTvE8HTQxwKAesCg9vZozsu8rmjBXMEHu05FwLORsPhM6ne/TvbOnghX3M+/x6hiVVdmQ+4Jh0mVXPksLbJrgrolJAeZN+i+oO720OShs81aZ3BkwI22cD402NFRHuiHcMS61yI3VCPOu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782740914; c=relaxed/simple;
	bh=5LQE1v+JfL/FOqxWNrSLdqu2oOjDIHv3rzwB3+UBZAs=;
	h=To:Subject:From:Message-Id:Date; b=aDGxaM4GkDikUk0beTnIM6oRNh8741cUO3PGzABHentz+TNonkgvqJhJRAlj0gm/D8EyMJWtZ6gz6uQCAvujHBqSGL3mKAEkYVpjmUwXcInzyeO9KzGOAUSEuv0FkwDLSOz3rmvBw1kqg2rJTdnmzI36B+6XKmVdXPpIIJDh7hA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=anraaC2u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="anraaC2u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08D7AC19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 13:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782740914;
	bh=5LQE1v+JfL/FOqxWNrSLdqu2oOjDIHv3rzwB3+UBZAs=;
	h=To:Subject:From:Date:From;
	b=anraaC2uF121q8Jg+Lqo3ovmDOFExFTC1A0XABkL3piIfOgrxYPfMbVHn05li/Vf6
	 SIrY9VZ0f20+czMlBXPnJl+zDlc2eI5zjKtEfGBVW1XMTk19sTGqbeaPN/vCtgfMdv
	 NM+IxVDZiR1iEpeNmdPKtx2DYtgDkrmZ6VhY2mF9ulyrXwdLyB+G8Gxq+3maZlEUnb
	 P8DYZVVM0OdLVR8XYm10OJqooBrWAQnPHDPEoD2/GLl6NBZUIr5E31K2qVc/cvaYvX
	 Q0wO+0dj2x5j46F4AeCuSg+1n1nc34qlt94tNiB6wJOoDjkl8wcQs4pIhQZQJZRTIa
	 XZ3njX1k2/8fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D09ABC43602
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 13:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178274091375.26325.16770084668171769028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e15c4200a82ac3888d769a22e9bfd3112eabc748c60daa68b085c78362e8f6d3
Date: Mon, 29 Jun 2026 13:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782740913

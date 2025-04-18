Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD291DA21
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744964994; cv=none; b=GLjG3YfYy+6Np1NPsnApNzUmcpwXp1VNmzVrTeEVuBf69WBfoT9FG3MTShk+7UPpRjaYq62yqOoKjaAlFc+N2sA3bTwwOdUn6r9Ze9ab0xrzbqVnYW8ruTpN53XtBxJjV5emityNgFmPxMYiBP+NI6y74ttnXokjD0Am0LGOLdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744964994; c=relaxed/simple;
	bh=G43sHys4O4ndxdQMG0GIdp4T6OBAHm1TKGvAs015vmI=;
	h=To:Subject:From:Message-Id:Date; b=AeIC/MHFEgZA6GXfot+cXPGcCgbT9BoTfVGgwUiAgFdKrgDbFnuRiNyl0FrPwNhJQbffeQnebsj0/h1SIu7SnBgaNL2pEZLGjyS+qyPkmMjxJLG+wYES0lsyEqSWoOCxoExKd3tmiwc+6nkjfLCqzDmM5APNJmY6uyZeGh0D1Gs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B2GFDwEC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B2GFDwEC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDFB9C4CEEC
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744964993;
	bh=G43sHys4O4ndxdQMG0GIdp4T6OBAHm1TKGvAs015vmI=;
	h=To:Subject:From:Date:From;
	b=B2GFDwEC7yAwY+6fKezpHYHzoT4oC2cBHCfWOGmly2RhTSAI8D9nYpC1zCi0I3Lxv
	 XNIJl+qgxE6pvhjhYAWd+y1sLKUi59JA2wOWXLjT8geEfZqe638hKuLHRoWdVuwwSG
	 qQdV5l/b0TrwCmNmpY8YrfooyEybifnhOPLzOeFZr43Vctt/Jf1lSEKE64VdrFUm1M
	 tIY2WbJOF9dp2snDBMIlpR0egw995y3eQ2sGMieHx6yWz9kh/90mbj1Kak9zgZDASa
	 MJ1yGGkr6UguU4uYio5CAg54vSh7eRWnjitTKmMbzBvK+jqG2o2WUQmZeJH3bGc74K
	 9IWmJu5RCdYeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0A2BC369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174496499365.2895.11549741672774556267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52cfd7dd68ce2408247ebadf0479cb55673f0b35834dae9b2823aa60f939877d
Date: Fri, 18 Apr 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744964993

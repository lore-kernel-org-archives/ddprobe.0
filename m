Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A0F61CBEAA
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751227794; cv=none; b=pz3JBGGlOvEAU5rNPjbDXVB89FAWFR+sw4G6tHKS/Nz8TX+k0jDWY2Fx0bn/3LUknmseKrzg1fE/cD1N/XmVJNOItg7OFDr0Z+MRH2QfdXbXKsQV3WAWZ3qRTejA/3MkGd69bU7evFl7PKd+Btqt1o1g57CJCkOwyMNy2sq8XqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751227794; c=relaxed/simple;
	bh=kNSitp5R1ZzJJJgusqvLx1wp2wSzSvEXcnYvghOC+Ls=;
	h=To:Subject:From:Message-Id:Date; b=DxlbpGFKEjCJ2WBtRm1dCZTakeiJRq8xJAt9XH+f1B3Abgadw5oEoz5Iqg3eQMuOUJ0QIPTlMCt8ybodDAbOFhRJRR/Slp8l7+eJ86JIDlmTyQBeGEIlTSBR7lv4lxxxg+7JOoeub65qLOBOfE2IX3CswajTE5Z0U5fFiyinn9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uiuHXh3h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uiuHXh3h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25E5C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751227793;
	bh=kNSitp5R1ZzJJJgusqvLx1wp2wSzSvEXcnYvghOC+Ls=;
	h=To:Subject:From:Date:From;
	b=uiuHXh3hD0ie65invGQ5cY3JWfoD9GQy1IfxtxPXT9n/Gt3KII+6/NeIZqCOMhxCm
	 sJqTfdGCntBb7zbuur6koHCmVtO6a/YPXVOdkRaYeKKcZ/FTeNR/jvPCimVitbW1OM
	 Jq/iNZz2S69KsYj74P/+dxRzThwWT0xnlf/23tPmZEnRsmGEJjd7oEsvyjWoRVySbp
	 XJ0lx/aD9ajZuTQxEqb4enMGW5R5LHpq66MiVI2ptjxzgrZPk2Q+umgh313e1ckFuE
	 mtsPOgfwh0Z7oRAzzCHqCN7Y+nSujTc+xeiy6nqbj3/6WMwlM/l9JIqu75+kSIIIVg
	 +Txe4oGOHuJCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F86AC7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175122779357.10443.9478813452511391926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59f6fbc800ec7d2a28ca54c53c330a261b3944e56b6ab577281870c702c393ed
Date: Sun, 29 Jun 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751227793

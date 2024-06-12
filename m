Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D89484A56
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 20:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718225903; cv=none; b=nqaCcz7HNcac/Yc6In2pT8oHJQpRa62ZWI48DEk7nDmt5fPVnBviD8UfF5+NbD+st7JEjLL0eUfzbK5qbL7rez1xFmNcnsConn0qVp1DSUm27G+YtTw2sxqAZq6GCpRRNSaZLS3yt2cv6Cr9GSZXhSFSSNQ/DfEQiA6LZVFo5lg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718225903; c=relaxed/simple;
	bh=ubT5k7EM34Ju1sAsm2Gyf1Nxvzbf47CHwWPJ9kteyTk=;
	h=To:Subject:From:Message-Id:Date; b=Ap4KDY/4JIyWd0l24EZxFCgjxgITQW4t0LYkS/VVw3s6+QpVfZZZJjTB/Ya9iB1yNUxUTRcoAffKYva0z+h4UMfWQvKY9fCyof794LbL1sZbn1gYXj8tVGir4NOSTI9d+kEMUis1Z6dzMWF6bHmWzj6oM63+cWV1ZRIT69BUNoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uc9vjzUu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uc9vjzUu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D86B0C116B1
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 20:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718225902;
	bh=ubT5k7EM34Ju1sAsm2Gyf1Nxvzbf47CHwWPJ9kteyTk=;
	h=To:Subject:From:Date:From;
	b=Uc9vjzUuxlIRmSkuUiwhu6SUQeeZZL59ajesojjjUk4FRuAs7yoApbZhtNx0twfEt
	 uLYB29kYlwyM6X+2S8d+80gtyOl2nlAroEpxkLlZWCjLJa/w1ZSovrVbyNPaT6NC13
	 WhVdecL8WuZiHx8hk+RABo1knbPtl1AfvnwzTPZc55kK0pjvUwBVC8/ZUz1r4ZRJUf
	 EIyd91OXKilAXIXo0T5Ul5eaqxGgiJpmW8cmT6QUfX0wDFWILTL0WVQajkSc2dQbtg
	 N73xVGWZ3itHuEeabRAlf1ny7b0RLC14fKll53GVZ4J0JM5Rp+gYYYp+rmnpUNAqCQ
	 U7E63x3H1DXtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C37F7C27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 20:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171822590278.22543.9262728544543896493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2026648b6883db2169ed0a51b8897c3191e3270a47a0d6e4e5c248d500c47b9
Date: Wed, 12 Jun 2024 20:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718225902

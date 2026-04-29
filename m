Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D259215F42
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 02:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777431454; cv=none; b=Hky+KOs71Hv4c7xYD+2riY54qzB7RpGMp7Wooq7LZuQxFsqwVF6DbZYI/I+6CFTGsqW273oTQWfvGseMW6Yv+/FVQvDZdzM7wOTiLsvh1reYME7U4FgKED2Zz+E8sjfZTI5GEdxSrIR/FA9H7co0k+MVZuNI6M6OjWPGb1v+Bbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777431454; c=relaxed/simple;
	bh=gdKm6bZN7du6IXc78AGnl/ZYBIrh03GIUoUXw2EO29A=;
	h=To:Subject:From:Message-Id:Date; b=Up5fOBYDk2nzMCIEqGNaWabALNzefPYv6E9WDk4nh+rQN2CdvMQ538sv0s2j0s8B7vcU/niTaDrvk8lA4F1guClzXuEeKACwt56OIml5z+VJ/zZHSWeOdCaMcUL64XeExMB23LoTQ1ndicXuPeeXmlCBAEyQJulS5+vhywVX0BM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aq+YSCqv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aq+YSCqv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD062C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 02:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777431453;
	bh=gdKm6bZN7du6IXc78AGnl/ZYBIrh03GIUoUXw2EO29A=;
	h=To:Subject:From:Date:From;
	b=Aq+YSCqvnuW0jymPCTmPS4EGe5vfRAzQ0eF60Z3QALSKnpmzGX0r6v84N3XJGqzBK
	 djhbMY1eGUGACURsTp7bYzTYWrTg1vTnjP6Y+VXgxPDTKW2VOq8gGfvE7iMR17hN86
	 /7BgNeL33PncQoM9psY2o5GFVF/dRNpYNXy87KxNh3swQ2U2trRItSL9wEp3m1gXnh
	 EaZs06f6zuJ0sQJ4SXtECA2BzNSkZY35kAWB9eVfrlj+qu56SAUqYkkdivoOVaJ8fz
	 g2HyLrm5uXT7NBdUrw1lTBog9Gw1/E2gVk5qk4gFz5Yk/aa+P6n271kv7c0dQJBg6f
	 Mq30BnF1nnTng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB78FF886F
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 02:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177743145370.32675.662228433181289060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73999f92f2fa531402354d926ff138a7dad4dbcfc00244fd729d5eb6285413d7
Date: Wed, 29 Apr 2026 02:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777431453

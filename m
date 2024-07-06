Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9F3A1A29A
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 07:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720250723; cv=none; b=qj7R0W8eVum5h8yR0MVG9ou+5AIIlC5wU9h+sMdfFrVfmEM8RKQ8B7gweyOG5NaVFaVK78e2Bd8xAzPLf5Ehs68i/PdpoCMNLSgdzUnXTYAdrYpMAszEFfsXpq6H32obUcw3xOaRfMAajnz+1mviY8JTpMpF5EE7yHU+WxAzsUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720250723; c=relaxed/simple;
	bh=KYwfmExIT3Mp+Btd0xMDQz0s+IRbXp0yQmFAp9SLeeY=;
	h=To:Subject:From:Message-Id:Date; b=UncyIdFJUgiHsLLvMMMri8aAX6FQg7ZqbI2tx973/kJXx2n7ujtXnUZ/K5VL28EXY8fWHKJpZ8ey342+GxoT+A9Hp6NKdyZzvCJQkmLz8qZ1OxCl7JImsFL2DkWlXoTbL4MyxPwxmtx/5rk8kOsd6HmVYxl9UQFNy+9/6efxi54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oKVT88+g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oKVT88+g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8BB0C4AF0A
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 07:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720250723;
	bh=KYwfmExIT3Mp+Btd0xMDQz0s+IRbXp0yQmFAp9SLeeY=;
	h=To:Subject:From:Date:From;
	b=oKVT88+gX5FdnmRwC8fy+dUZ/j5+N0DNhLQJvHMPzaHHsYNdtNey+C9e/c84aHkJF
	 dDwFRra/RBPm7j6q1DZqnVoo11wsAYUtkOjyl97mjM/vnIShTV5pwXQ1kuU5PyZ0MN
	 PCEEa4UqlcNKbL92lHhXXFZh2PR2fC+h7SdsqHQTbls8Yh+Re6NkhEE/xnHLk6FMTj
	 Fg47zkxEWnyCFqeK4bwOXQuIBUhPJEmHgMHGLIf6v3DrvHI7zWKcFYSM3ud/tet0H/
	 iaDpfFBfznVyVDDWUfKJngUO/lJyZZhVB2DFgCJaJH4O9VMRwkqfMeYv3d36J8jhoY
	 sLnJx/DvmEoMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD9C7C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 07:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172025072275.21698.12699091433241814527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07991cf8df6126993e2f576b0a6e57eefef4033e00cd37d7637318dd2cd1e81b
Date: Sat, 06 Jul 2024 07:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720250722

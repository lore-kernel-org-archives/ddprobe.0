Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE66286413
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768674834; cv=none; b=LPalj0WCv5izkdX4jekMCtHGBmH3NfsElfnXEMDZaXMhBATGfEhctIjBUwTX5F/dmsptlzHMRkqDivGXeEfGVOEeNKatItTGT3WJBbPyokiDY42fj+Fa0QW9/EwnHLWwq1GMwpUu+teOLLpX/lE46ez4ps2QZlqRDSaU/x2/8GQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768674834; c=relaxed/simple;
	bh=U7Sr/p7owLhBYSquACQY2uKJ9lhHgznamIZBwngrk9I=;
	h=To:Subject:From:Message-Id:Date; b=clpw5cpuaXfkZ047OT2zKRxaxEfqOIdce2k2IW3u1CxO1lfA0xmBIRgNqxQN9r2nj4T9bwCLOYeq1XWV4f9HBcpHXRUnlVnOzVW7Ojg5Z5YMK0T3Ir9/T120AjjDpSusasJjC19Q5InvKmVYkTCX4X4UJW25i4FFm4y9qAtAjPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c7H95+F3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c7H95+F3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B89C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768674833;
	bh=U7Sr/p7owLhBYSquACQY2uKJ9lhHgznamIZBwngrk9I=;
	h=To:Subject:From:Date:From;
	b=c7H95+F3emDL2gt1kXUKCTYL/23TjeLl1/iXQGPufD0K6pawFGVBoFko8lEnraVe9
	 YHHP5KxhqSZDScmsiHZfn5iB5TZlCaERUoCuuXVtBUu/nvjvUJf80BqcWUmikO8g7r
	 XqXYEjeN9UC5D1FlWhfRIJFHhOR1bKGXe0H/yRjSw4JZUPfxnf5hYp8/SlWagvruFE
	 S4kPwUFhaGRhwmKNuJSCVmH4z8bawoiHNqkLdYgykVL5c0hi2dAmR50udjozch3LYz
	 sYOGrawxbUFciUfo0tUIdFb1hOiPRh79qld6abY8iAiyfvQ8PK4Kxg9PK/B7uG54Y0
	 v8Sd+bR901ZDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916A7C98330
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176867483357.28657.17561428207276286288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f283f4b9c8ad756299325f218835a2a6efbc74b75af312b5054aba2dcfc3d39
Date: Sat, 17 Jan 2026 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768674833

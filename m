Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3FA339A8
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 03:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771127694; cv=none; b=RyAvMNIXTOb8P3f7y64Dy1oYpeGJXJlhXRUp7/D3BmErlwpDI5CI7OXPv3nyUUOSl6gooc0A6LbD2oiKZe2+d33P+VIdKRe034bdIpqSo1v7xhGFvosS1BUeVcIA9Iw3YIwykr9+VhDEt9HP2aTBmZtlZsF4X1NvQLExAVoAuA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771127694; c=relaxed/simple;
	bh=OjwCwP3ngTfM1RTxjLDiMrtn+uTqFM08v0y0nQp1hkw=;
	h=To:Subject:From:Message-Id:Date; b=bDGJxG9N0b7pNqLWJzGkMEM0nJfLW/5M71vtva/0OGEKGGWB0q88a2TM96K1dPDOgEC7+Ujz4ZjKY2PC4KcXbd3umyOiRxo+t27UQCJQdHB1suzXh6dIPQoXYovQjFhOjJNsGPojm9oLFvwat4EeLLz7GMMQDGo+P8K6oLR0zgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MKiMGO3D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MKiMGO3D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C82EEC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 03:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771127693;
	bh=OjwCwP3ngTfM1RTxjLDiMrtn+uTqFM08v0y0nQp1hkw=;
	h=To:Subject:From:Date:From;
	b=MKiMGO3DJy/unjW1pzoGHVwfgbtfl/QbmU7J5abmZQIDPriS6NwBzmVVYDHwwEToa
	 v1/zZJZGURNp+xaFhFIaBmzHCrX9xNY/XYhT//WddUeOUUnyhF3BVlARwZF9J02Gcd
	 HCT1dKBgzzEI4xfafMufhHf+FIRgg0QiTW4/viKQQYgbTBH1cj6s0lUBl4Gq3JHHV8
	 2lwmp+Ul941ZUAGnJtixuz5B5XnB+/kn7LPLKhJa6kpyl/81o44k4sXGaTJqQfHSKT
	 QUNt4nzoMc3Yynr/yVrgnz5h2EQNqJLg1GFo1+3dlBFb81WuowSj1vOSRs4T2ouk0A
	 DXK9Vly9vJXnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF6DEF585B
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 03:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177112769364.8902.17142713878791979692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5064b4ecd1cf77f89a631483f89370b403d34d787d12a7646b978eed1d079034
Date: Sun, 15 Feb 2026 03:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771127693

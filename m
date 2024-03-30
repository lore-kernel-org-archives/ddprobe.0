Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 024A41E865
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 17:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711820897; cv=none; b=QJBwJ3gU9Y4hyruHtp1Ur7RJ0Hocrd1H3hcv7JxthGVcazIBdQLPKk0NdKwForrybaBpv/I2FjXlACRx3856AYGAEnkW0PY9GqBdjVaSfXw1gPX8GsJSkcpOLA9qaqvt8nFbtm7xrHg9b0S18WTHdc7w5UuNC2lKefRf7TRQvoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711820897; c=relaxed/simple;
	bh=6rSJSGrbFrKflsuhFRywCuYdQj/3x/tMeyM5+ZshEX8=;
	h=To:Subject:From:Message-Id:Date; b=CYFbfMf1u8zV9aj8a9lNYaOCHFQynBIb91F3Qft3loaZyjATKQDM9J/zJF0i6GbOM4jmVfFJHybFkO15zxSWk5WjE1DWAXvbxpR/xFvkfLtbjZbYb0MFq5w+t1ng1Zk4e0dgg43l6B5u6ZsSYLJSEMmYuVEgTPLqdA8agnNHLtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sgb80Gf7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sgb80Gf7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BA9FC433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 17:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711820896;
	bh=6rSJSGrbFrKflsuhFRywCuYdQj/3x/tMeyM5+ZshEX8=;
	h=To:Subject:From:Date:From;
	b=Sgb80Gf7lUpAoYTXZIc4zbePidkW75NjMUnx7jEHLzgLLpN6rrUq3hLnilkX0YWk7
	 D0v3md8bH31cHkw0nH36uq4ik1PMGvQWfY7tBT7Qw2eQ9KY7f5hhQbouKdDgmQr354
	 QcggyAoiCr7yLceEB3foSyMSiyg8AQqkFU2kiorahBwg6tU1gr6nDP1ffqALLlf4Jd
	 Ksp6OVj1LOXLkKbqF+EH51yiro3me++2YEeIhANUa3h2kbQoAeyTpMbVQ7p11lqIsU
	 LLZU+/4MjIGJM5oZ7RGJB/xGbQEIWMHYrjeC7TLd5hhY5Ip7kiQ+DOVsR5KUjef7P5
	 6cwClqK1GFG8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63EC0C6FD1F
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 17:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171182089638.16398.3927903193137217242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34f2adc60dbde41c933b920461c4aac47af3271cbe6df35276cfc660fa988291
Date: Sat, 30 Mar 2024 17:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711820896

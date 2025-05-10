Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB8710F1
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746915594; cv=none; b=T3Eh5grZiJ6S5pGI2cJ9KQo2uhrxXcM6Z47CtUe4rmbSCyx7owVPE659UUHduoHVo0Gz2g4s96V+UeTFxvCObSg6T6cs/tTzjbij2JOb17z1Hct55uBiBIue0C0p4S7H5zDfWPkJR4X5kCwfCyGt3Nqyzd/XPDlyM5u7Zvv50tA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746915594; c=relaxed/simple;
	bh=JmtuGmRDZucNo2A4pqcmPuOThnQuaT7Apm+njYi3fYw=;
	h=To:Subject:From:Message-Id:Date; b=bn2YdUPjrvEKpEkqzH3QgrlF5RPZ/bWibkwTm9pb6ma3s/bjfe/8SiO8uFziaCWPALntSVIMzTMgMesPSXYnpuzBeptsi1UF/GAw8tkGYHBu0CJZeDuojuCwrXpKJvy+DNsHd8mVrfhMJY5GO5y/JxnmQH5D2hziZupKExBkDSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SOx3QA9U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SOx3QA9U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6649C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746915593;
	bh=JmtuGmRDZucNo2A4pqcmPuOThnQuaT7Apm+njYi3fYw=;
	h=To:Subject:From:Date:From;
	b=SOx3QA9Utzqa0kUsrPPU8B6dvZRsr1au1mCfbZv5WjiS2yB81r+cTIBmd5ITWdF95
	 mQR2Ehi3oUNsJ9Msa++ZAzhFQasa90WCVPKbIGAMFBtKb/9nBjrcbPWyycelbTqpXP
	 /lfqQYSDXC+m2aQCBYDHwTeQ7NawnlCFAzAW1nML9LKh1gIgKHAnCqWgCrrs/kP7dS
	 1NyCgwj07BXtQqitB3q9b8yWAIv5zPW1qmrxkGHYaPNFbkUCXCsL4Cc8Xq1aw/yEOf
	 YNz7uDKc4EjlyZcks6+CEw5XBMAnVpmyrGmu9KhOYkznj0fzrIEV4uP1OtHF8pxW/q
	 BNIm9kd9ijhKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938D1C3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174691559357.11975.2276913907803143548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a4e3c3de7f91e942dfdeed3bdb814562b0f5e8a8826c03657792c8b904f5eba
Date: Sat, 10 May 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746915593

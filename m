Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13389A932
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756105794; cv=none; b=k82lAGYtu8YAR3lOTAMeDBVjDZWzF86Sifvf7GrYQlpcLlY0Uwhb+ENwENBJDjJzvnSK3oqq1uk62t4nEjI96ykYzF0x5eDQB6Vl38FJ304AIO/Qdwm5w5nFgJZWzcLZsTSibHoBi8HEpkMZqjeHhyU9bJWPsybbbPsolOcnpLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756105794; c=relaxed/simple;
	bh=6DSm+M1NLhgh5EMIzWgCDic+Hb8T3OjmSTmh7W5BXyA=;
	h=To:Subject:From:Message-Id:Date; b=WFtJuroY6o84ejdKdf+iQRuVircYi9kEjz5Vi0XrBxILeYAXC8CYV7kfhCiNEXib0u7KTgMRmsEhOU60yGYK/8QueEQv93/oqZAx6d3E29yuhS3tVcGRZKDTcvRYZ5KfkdChjWFfSJNO/M8BGF4kUSsP8Cheu9hGD42nYg4axtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i0Hpkjl5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i0Hpkjl5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D4F3C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756105793;
	bh=6DSm+M1NLhgh5EMIzWgCDic+Hb8T3OjmSTmh7W5BXyA=;
	h=To:Subject:From:Date:From;
	b=i0Hpkjl5XlQszIIYrr/GxZ3StG5tzNGUML1EaH4bfF2piLLr84OO3dgTntuS16Jpg
	 Dci6M6y2KKECwIKoffsKCf6Rde0N306vgiZT8L7Lk/HLRw6SoBb58x/p1LXZvdUhft
	 cAidBiGImI9SEDg4InZ+HljCfKIRm9oBeM2qF55/TK3OcaOrYKkhEk06Z08pNP5mIX
	 UOg+vj1qBvsN9mSNj6xxNxdFz9w0oadu2DTanRg0tc4O4+FwMRnvgnJvlhSrfb6mkT
	 ovmfHsv5m9DUxvEB9ch7gcjLfuYW1Mq3oTvXr2BwzvJGjP8Cs1OvdQEJw1chgzXGVe
	 hH6bSoZZhd6Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDEECA0EED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175610579357.13224.6321280583890525607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6e8f3b18f87d62e4375db01929f3311698cae89939a9e9bf526595223644062
Date: Mon, 25 Aug 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756105793

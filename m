Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D75391B86CF
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732224353; cv=none; b=uH+pcp1OHPmjtwMoijykEolyCzgqm6Fg1sEm7oHx2fSlFDjooXJkGaNLIdlyD/zGWeVnVGkSgVZ0xHEsiEMZsUlfjQ9iRKxWni2SHXSsgZxvz7XVD2rK8U+OWbWpmA1EtMKX2WCI47BJBO69Lxx35eEiOMPdZvkImAUBsGak/po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732224353; c=relaxed/simple;
	bh=O/Tnq/Wo530jOZAu//Ez/kj1SLyeHlv2qCgbvJgkqnw=;
	h=To:Subject:From:Message-Id:Date; b=fUmJdNNSdUFYZ87MFg6tFWfLBuAAdyw/iXHE/Gud1HS0kJPeoWkM1FAl5orY1vrApQ6PV7xjD9Ey/Y7KNGzjpMsGcuNOLd2PpYQf1ghwCWpC5Qel0KlKSsEK+O1QRRg5PfrYr71+kjPj6bbUBmBKHUUfX83SNwL4E3dVDi+3+Fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qeUZtxns; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qeUZtxns"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0549C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732224353;
	bh=O/Tnq/Wo530jOZAu//Ez/kj1SLyeHlv2qCgbvJgkqnw=;
	h=To:Subject:From:Date:From;
	b=qeUZtxnsJvHdHRQeqdWAwPQ1oT1lV1HzW2yX8NKAgqRXZ3C08VgcFgbZOA9527+2O
	 CpZNRTo1DB9+5cy8U5zNkL/6CQIRlSToewJvc7NRTtyzoqJcOaB/Fv4X12YVF0O4cS
	 HqoocVdeyQAawbiOyqM/hXlPrtOwkOL0wOd8Dt/99Kg4M5HQGZVgQQJxMZVPdSaZDV
	 LCKlpx21yqigd/WU721VYi46lZN3muJoUCQZoIqROt1g+cCAvJ8Hz+r+ZPBVDFntDp
	 xlReZ9OsOs9MD9cqyLn6IPqvIRQeenuKn1Vlj8QXECcCJeCPccVWhnsxEkfipHbY5A
	 HVLhx3/IjqN6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B22DE64012
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173222435359.1060.6919448939614293507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7885fdb0d97df4432ccc65a5058dbf6f5d86dd33a9f26cfff17a4a297eda9fa9
Date: Thu, 21 Nov 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732224353

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E194B1E6F
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746668394; cv=none; b=d1aLF8JWS1OD4m8TJg0Q3pToEjqsIR2lIjaH3gpgkEl6hj/ct3DqoYe6yDMdV13dQJo8xHvnHZ4DCnQ24Zn1XrTa+gVo1ctrEogqxnl62cNA+2sWQ71Z6KKZ9OtRO/dHakG0UkBc3eM9GtwvGKYr7DdZ3So7sM3W6x0oNBs5U+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746668394; c=relaxed/simple;
	bh=GwcNSZFMgdItcjEgLASUnG4mKOR4wywjWhvKEPrzpqs=;
	h=To:Subject:From:Message-Id:Date; b=mBpI/7Hz5WKkRc+lNCguQ0K4ARBkdlyHf3dj1pBF4Gviraam/Z1I6YO9XbYZKv4ZhdJ4kviXhjwYwb4c0P+Ky9Mn5VHSTcMEN/ezxK7S4wj2FjNEI7FwTx0utP2a4CKBZ0XaUYmKeCXRKgrGhx3cuncI1gn2mBCcFsKa6T4fouw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B5zQCqNj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B5zQCqNj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15DBC4CEE2
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746668393;
	bh=GwcNSZFMgdItcjEgLASUnG4mKOR4wywjWhvKEPrzpqs=;
	h=To:Subject:From:Date:From;
	b=B5zQCqNjikiAYNi5Al5Tbq8CUDDcuKD3EQFtshq4S0I799iN0FCJo0yM21kdJGnrZ
	 gbKKqocto29jVlEcpUXufLBXb447u8FiE9OnGZILjmjseeBrNfoHp0y7PadPhtennu
	 IMEZpO+oPBw/AQ8j2CROiGFILKI5PZOTTmXyK2fQErRRDeqDDXtQWTlL2ptONQ+Eqj
	 nnr1Hq8aFvOE/9WaZbY+v8pPec39kpqjpvtoblC7eLyn1XqEwrOC9AfLP1Ihqsz04W
	 Sd968U0H+LKTl7wRW6J+rBPq8IS1qr3aVG261nCLOU/Lp+m//f2xt9T8YFJ2d+AoQ3
	 7B4kTWpcxiVVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C91C3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174666839357.1881.7292138390414810347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dba64fc3831b161ab0e9a948369ecb0490fd55f4e2fba9eb2f6e09f7a20b7fc6
Date: Thu, 08 May 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746668393

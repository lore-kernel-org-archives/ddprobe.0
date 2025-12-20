Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9252475E3
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766220234; cv=none; b=RgyyhuXb3o7FQKAHBtB3lBSl1uvg7JlgJm3vJUDn1fpTWKaH0xa5MX7ciQpwrcLuQvbKRF1bZCP9g2sKtJd4i/ONcqB0Ypx8zUh0z0Bvtpw1s9OMS3KEOl1iRm5XmpOb7tJFxOEqB6Nqv3f2fzSHK6PYYTtX4ZHgdGfvb4Xh8Es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766220234; c=relaxed/simple;
	bh=Sx8oifM7ZTyAmlThUX1dOrAOr9xOXwdG2oJbkgHP7EY=;
	h=To:Subject:From:Message-Id:Date; b=BR+Gb2Zcgj8yRzWERmZYsY5fLtE7YLLazAT1acEXUR7LGrNjqmZpYq+MaOO5OPUaWCkryDydmlByzD6B3zH784DGb8Qyr7S5c+5r5PS8mSgdJ4rZ7ALUTSn0W3Q/rRnl1r9cq5Wv0n78eibiubYB6xrWkq8xWlGMGlYgITXgt34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tbG3yqkV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tbG3yqkV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2306C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766220233;
	bh=Sx8oifM7ZTyAmlThUX1dOrAOr9xOXwdG2oJbkgHP7EY=;
	h=To:Subject:From:Date:From;
	b=tbG3yqkV1aY/4FC01rlHFibkruT9a5o9euQACQT69zHLSqDDtZxPFcej/hsv5/VAD
	 kzs/KbGkR12mbQUdkOp+8V67DXsJDsLT3coLhwHF33tCxEG5YCwY96MRH0NxC/9L9E
	 Qnihx8ufBa24KFSZgidtinw80vzu9GlVX/0c/UrBSBR/xRnfST7n3xdfa87uyPa67z
	 rAtv7U66gIMtYv66dTEcSSlNh1X8J+evQuaUGlsmh6CaVGCN7thehb1HfdNTZi7llQ
	 rw5ykH9QjEAK7FoJKY7jAbEnhNnr1CfnkHcaMwpLr3jZzADdatKfycObL+2kNwAsiZ
	 fha93mGmBJryg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9265DE668AF
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176622023359.3383.7395643592926206984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf5448627e53fd76375367960ba69fc90d1f79b483ca75c111bc1d2bd39e7441
Date: Sat, 20 Dec 2025 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766220233

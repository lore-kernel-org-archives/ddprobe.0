Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CAA1E570
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 18:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713379163; cv=none; b=nPOmIobojbTWO9mV7RxGfq6W24q/eMWqZDb/crg+NmCnuukIyLRXtbGvQGBFWsJ9uOQYVfbAPqgJHY+3XxjjneR9mSf8GiYwmvKPJnInHCdf2Tc0TU2zdai+QW2NCwjnNS+YmjhAJXOAzBhRAdgRA3y511mhukyDqvl66uITd6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713379163; c=relaxed/simple;
	bh=kGsZq60zFi06Chusb0j/TFEFuJvDDRU8yvSiEqxuVYY=;
	h=To:Subject:From:Message-Id:Date; b=FR+YwWN+ZEE8M30ekO0oVkIFhpgQO+hbVcpqxPBMeZrGWFCKeaw4nRphd2nrTRKhkl1XzwRST00x/eXEUboE2ch1xi6WmOYs1ZvM/998bIsOE3f+dCQFV10qmBBg4Bs2RBESQvX7nm3QnMl6Rm/GsbVItxEpDsiCeLkKuKXrH9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d4+HMnXL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d4+HMnXL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D36AFC3277B
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 18:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713379162;
	bh=kGsZq60zFi06Chusb0j/TFEFuJvDDRU8yvSiEqxuVYY=;
	h=To:Subject:From:Date:From;
	b=d4+HMnXL5w2Q6J9bKdaGocqbOaK6aIaTIyYMdmTUwvlu3pCoyOIHgmRakmk6VIeSW
	 IDwMi3nS2Y9hjVcfhsf0Ebebo2HkuV1qFKDuoztTx2mD2Fvando1VXf7KQfxPy2UGz
	 XV+x3R6vibPFfI8hcsD+fKmBjUV2UCOwDh33e7ib22+nOV53o3EdteEZb1Kss6zvbd
	 SO59jMFzenp69s8+WYwLgwMd/C/5gt12mn6/uWIxQTqqLu2D+MjEz3MLxJvc8SIt+0
	 kbEO2MR37cnY8Phr/mQXSM4KWc93u3dHRPT1xLXslft3tGpTlg6EBCuiEj0otF7WqD
	 BcviOVNiIvAuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF19BC4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 18:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171337916277.31429.2779638147732493459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b31ba8355724cc8ce34fef0d70eb06878eca3458aee73202207fd79d967e1662
Date: Wed, 17 Apr 2024 18:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713379162

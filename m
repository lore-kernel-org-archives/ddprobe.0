Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C09A35206A
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756223394; cv=none; b=jmPkalgSbsEp3xupC2ORCJQr5HT+HPJXaZaQN9wRB7qUoM91a4n9U+5lIxdlm30HOzbUF4tVBlldA3xgtR1mZD5laBRyuk47zzAoHkBuYvH7YVjhCimlowkab3JY6yRqcWUkTxeHm8iLXpzKeC8LzDwnPcxTls3LJ/H/In9pxPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756223394; c=relaxed/simple;
	bh=zddFVPfjqyifyWMSOrJFM9K1cxNSrua8Wd6JMrQ5KZQ=;
	h=To:Subject:From:Message-Id:Date; b=o6HLH/tGQFgJ3T1BACF26s/KNNDRFDreBUEEc9J1d+gOOaQCkF8ebOykVtIFYkQ0QO8NiVEmiEsqQB9xCwHT1j28fymty/jB4hVsZiQYUki4O4vmH6AW2ezHEvLpqXCtm25Hv09PQoH4Pfz/r3RiN+Jnd4pjkfgMF+VtqHuCW2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mEa2yaFm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mEa2yaFm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB8EC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756223393;
	bh=zddFVPfjqyifyWMSOrJFM9K1cxNSrua8Wd6JMrQ5KZQ=;
	h=To:Subject:From:Date:From;
	b=mEa2yaFmJ6IwDYhip2a+zMxbJctxYTNp0EGbY8Uwh+TAv2iYtYuz3OVPNcAZz7D9I
	 zPUM8AwR8NvayjWnrT2OnMLZo5ujVcYVp6+qNxcqzi/R2m0j+JEwqd5p6KbMw00uQ3
	 bBUJVhOpkK2UyLO2p8vS9iqK9kLFUVR9mryEmRuNj6zj669TBjY1wywEw++FD+8OdS
	 KQ+j2kt+iLSW1vZLl21wxwGi8UqlmOcnFdAOdAg0TieHyw/jvcYEoqKSgYErmnMTO4
	 Jben5IBigGiM7QV5JlTHtVFP89G0stqZc43VRJIMs4xIJi0GQM2+y7LpkzQDYxevKi
	 XeKqiy4PRQobg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F79CCA0EFA
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175622339357.13955.10964880167854590669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fea218f7772680e520c18a550761f865eca18d925b97bc90cb57d608b56dea0c
Date: Tue, 26 Aug 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756223393

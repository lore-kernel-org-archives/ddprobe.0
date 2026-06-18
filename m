Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6809D3B4E8B
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 08:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781772394; cv=none; b=SrCxcWV+i3zWyZyua8+fPCqoBe2NOtHypmOCoNapSqFpBIynQY4Acm+ZoCMwB6D6gcN33l5lar95pms4odchRFAsXPeOVbt9nh9yOkX2+oCZEKm7Mr1JYieScl22jfBP20GaL3GFAhECwY6TClsRkYE0gO0H/5wHAxn2OBWa1Fs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781772394; c=relaxed/simple;
	bh=1cjr+1anflC4T7gDDEYW96g2ZKK0pVxuTZ+Pl7lrGfo=;
	h=To:Subject:From:Message-Id:Date; b=ECYyGUsPfxp0hsWoqZrwo2VZBPYYW1LKWCzNAf+cV45hvVzvwha8Dz03OJkbqJFtWxQ+XLFB3BZJZj/knWLlkz64dluyqK6AaaRIXvp0wz0p37xGKVhfHBJJeT2eH4zzrzxeInsOjYy/gpGwX4+I9rocAIHnYAUCrRych8JBqpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cI/6tRWV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cI/6tRWV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFA73C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 08:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781772394;
	bh=1cjr+1anflC4T7gDDEYW96g2ZKK0pVxuTZ+Pl7lrGfo=;
	h=To:Subject:From:Date:From;
	b=cI/6tRWVBjWt8X1L51m2g6Asg1btJYinp77t64c2bFmhx/ckzaW0l4m1PPft6Q6Rw
	 wAP78Vlx4EFgOlrNzV2CIvySnczbHmXjmFNowLtH2aenXMauApwWZ7tAqEUC/0YPCz
	 XvB22sSoiIjkkejAu02Esrq0w/O6c1BlywozLgsR8sNbk0HmogDS5bJpVptSqwBWqH
	 eCMAYIms7XCVQ8vY3vrR86QDwHX3qj+KGw7ac+RyBsACiRMUSFbybgrDNrMFU7YKa/
	 QMI8G7W4/fVrKUemldavuB6uTJuHXpjawGIBBglJ5AvHzTHEZfFZmW/wUQYvEPUe6B
	 IO8wIg16piW6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFE3ECD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 08:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178177239377.16949.4841428954740608846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e23a85a56a18ada5c22176385ba42349006aac1940fd4ebb5f9dc83e6675535d
Date: Thu, 18 Jun 2026 08:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781772393

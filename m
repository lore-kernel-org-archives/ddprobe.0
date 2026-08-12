Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321C944C4FD
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786543234; cv=none; b=LGNV1Lt3J5LJVCPnkSA1pMBAxBBPTNe9wp/Zp8hMIccJITIHsNALPjzMMlVzB6PHJ6uZaHRaZnRtVx11h4NnuoaXQSpSe+1yddZ3TgZ6pwuqptnPA+8jAZ6uoIDlZacQRrUPUQVz4fVgFECmrNLinvcLsrFMrwcPhZowokhbI7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786543234; c=relaxed/simple;
	bh=/n7f8NRouE8SajNf0n49HDZBU17NUMJVG6ibMzWUbHM=;
	h=To:Subject:From:Message-Id:Date; b=vDZW5cyh1/DigqURlY+WQQLPDBYfNcA9ledvmevyAKKEAaCIiIzjvVUK3puX3/T0YHZg1H8SExtO37XEJ/q7CFZA/2K/Feu2xETbURHTzP0rjKeT29Oc/ZgNzyXxV4bflUvDHUyxw00i9uN+ntIGyaVF0xsrcneOhAKWpq4VH1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XC4CYY0X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XC4CYY0X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D457FC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786543233;
	bh=/n7f8NRouE8SajNf0n49HDZBU17NUMJVG6ibMzWUbHM=;
	h=To:Subject:From:Date:From;
	b=XC4CYY0XDU3wM7L1baAzNq3jUeVL1xBF1K4bmUwG0hk+UtxZGz+hTMfDntYjpWCyc
	 YQZ7EXADv1v7nwh2wJE2zQakWOiaU22UZxdIQphWMa/wvND2ZEcAuDvJka0Fxwtk86
	 lNTXHLbyebNR6pxq+DVHNTGf+Ukl/Is8vbXsmtx9Yavmd+Uaxmpy1ZYWKUpFXiZL01
	 plFj5i6JQ4TRP4cI7rzm9yeq14SraR1+5ZFgV3Yxy3SjTiBvxOyAMGTEcUdrusl3Q8
	 Kv5I1f47LJVfqoKNjLi5OrBnUYN+5JvuhBXVhOu1GMdKJvQI8EXf0xx3CO5fZVhfWY
	 9iomv4MrHXUTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF387C5B572
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178654323370.26597.10846980398437638345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f97963cb9c569d48ca7e21b2509d238ac9d5054deee0c75ccbb69cbade525f7
Date: Wed, 12 Aug 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786543233

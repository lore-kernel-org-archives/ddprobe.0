Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F28DF49
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 07:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765090974; cv=none; b=Fd/tBvCAU1RRFUrfsuHAcQhrERfB9cueJR9HhcFKNsgP2G+AigA+1DCTtV3Wxry6zm5o12oMunol4wDZB25RuPVsOmbiKB+yjVfSGH0V5JXkI7UczIdmm0muplloAlvqL2vbyRBp3Z19hh62iuRiCDNDvAyAbBJmzd7+4htAmFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765090974; c=relaxed/simple;
	bh=8bDUdkbK8A+te39nZ11XXgOUpTgGQX/+npwOwBDg7cw=;
	h=To:Subject:From:Message-Id:Date; b=dePfICKnew5kjLe4kpRGtRPhZgeMVHByJyVqi7YjM4XeHUDI9WFfKm0ffW8VV+JzVZRe63juiFKDDQ7sFpYD19HqNHxYcsU3Dvm1lQVhsRT5JMBdPnER9WdFMEjWqaNX2rrPPDUPA7at+NtDvq70T9f5FP/AUYPAJDAWaFLEnp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uxHtOd1N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uxHtOd1N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66F3C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 07:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765090973;
	bh=8bDUdkbK8A+te39nZ11XXgOUpTgGQX/+npwOwBDg7cw=;
	h=To:Subject:From:Date:From;
	b=uxHtOd1Npr/bc6mdFJkEk1jYpHrQV/wgUC8TKVWFXGnkaFptQAAhlzuC2rqJkzZIk
	 NhuXbp8unJWe1uI5OIt5BUeqs+4OPqK3JdQkmD0of0Dy+vt57SHyRTMGpggAzHG5uA
	 Dbn+fCoH+heCNtlFXDW/n58qwCKfTOc6L+v9YjcZXxcXpdRR8jxTuewLNo186etZpV
	 Vtx1wQt26V0HYMwmrJ1P2liTli5M8Vo8U+KVUqiO/iyIvwFU82C3G/QKkAsQ78SnRI
	 aW8njKdYLXBV9DQSZ/xyiQGWH9zjtkAOQn2qf0xQ6HHm/uo2RsnKwJtFbbd6aTuStz
	 K1/O/7Di4Yq7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942C4D1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 07:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176509097358.18887.17739312506122195880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c467090a646d52c9cd8c4544da91049daaee6ab7cd898638f060eab249119ac
Date: Sun, 07 Dec 2025 07:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765090973

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380DC30C610
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 15:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773503094; cv=none; b=mXU+GvBhKAgZITohnG+eVhDf9dplcMm3fbszHkbv9MvCY+Z6og0MZhbpgf27qe/IZ84vDSB7MnVQvdxawulPssOCFAkTGvUH4f/BYpkxCwrdpUZPyldF1lVNTUQX7Yy1p1iHLl3Lte1WTiYI2lI6dGjLEnMwqOWaaFOrf3ixJnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773503094; c=relaxed/simple;
	bh=TQjNjvl3OVVPH/SWR51nMbQp2I7qX44buBihTXNVaPg=;
	h=To:Subject:From:Message-Id:Date; b=kB3GcqryYR4XslvAuAczLfMmQtz1c9E5hllSMJnf7qfgtzFxosZgRN0hfM6V9sXWOB0EON2K0weSsiHD2xgjLOTQh5fo6p+4i1mf66o/gwMgQT0+SBqFSehTg3F1NjRsA/2IHSUPcz5nxfZvGCckpjpxhr8crL9ttJKU2pJ0O5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c/mHoC0R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c/mHoC0R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8456C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 15:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773503093;
	bh=TQjNjvl3OVVPH/SWR51nMbQp2I7qX44buBihTXNVaPg=;
	h=To:Subject:From:Date:From;
	b=c/mHoC0RVq7bx/rb4aNeU/PKctyQ15nL2FD5BgQW3niZBbpkHWWzXCAjE90aDRIYN
	 rO9EFE3S58NAJm0xafVvvWkqOAWKe+xAzeGa/J9nKt9xraOQmf5xgnswd14Fm/LD+I
	 8ns4wm2UZr1GuCd0Lk358/yuWR/YCN/hi4kQwBFXsdkbWpTHuPLvf59j17iAIXl+SL
	 sn7v5v7GNXF4RZFeFvKAnZNDc402zt3Xnsa0S32Y9+Tqff+B5FKHuJ+/zY+Z354z3O
	 zFfFArebhVjCy89dJXREqfYBI5irdTRCTXs2DKtTMXOQFShegx5rFKxgQZlRwy0F73
	 hO3KP11MK6DMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9581F10706E4
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 15:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177350309357.20657.4767445740010945912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7848a00ece74f0491fb6d0659336115a3e334067b03619b7ab5833adb557344
Date: Sat, 14 Mar 2026 15:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773503093

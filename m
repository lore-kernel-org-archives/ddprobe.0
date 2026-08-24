Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D625493657
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787547634; cv=none; b=WzCiHpaMDrqTOj4DkKKZ+w8H552zBI13qGOdtRXpmtXXcxHW8RB38L0F3KGwZh8/Ls+NCC3pOEDounYRE5wRcTkwFaAaRcbuYIchDBx49GWRwLaC4wyAvqF/8aBSZKHD+/9D0V0VkfdifvbS/WqOOGt1B12n/kpDV+Z+b5rZdhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787547634; c=relaxed/simple;
	bh=rGqFXJP5dlStTWaMS0+K+WVnAwm0K72eGHh0xCMv6F8=;
	h=To:Subject:From:Message-Id:Date; b=YZiOT+oFxCwjNSHkdjU8blbQ0Sbg5BPDOIR1KmTP16x50Z7LcEy2XbDv+TfdMG3tSeDLG+eSkhLfPxwqE7TmyUEQCPaBWyPA4xAr4Qj3c0o++mi7QOjizfY2uYOyVI+aHStTfRl0ITi2pw8wPKHZ1fl8vBnX5Zv/u+EJ/Eif5dY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X32tnotO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X32tnotO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4EE4C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787547633;
	bh=rGqFXJP5dlStTWaMS0+K+WVnAwm0K72eGHh0xCMv6F8=;
	h=To:Subject:From:Date:From;
	b=X32tnotOy9t5FdcrrUEAoXVV2oGuWqDNTNPxYWwN2QJJJ/Ku1hc89Jdv3pQY5gdo3
	 Z7/JXTMezWaVYVRtFc9ZaA5T/z5C0aH6xxzrZD1D00TVjCuxbliit6KL1BtlT0O9g/
	 3zfWMANixxlUrPBhMUUf1W29Pn3OamHo6WV635MdmWa3BGKc3+PoF7XRrvJ8sRHnIB
	 ngk1b0c/Zrg+fju38QVEmNpLXUP2HBmdj//NkU3/zplHBKE60/M955s3by41KpRGu8
	 oscH7na41YtpT3JmoCn6B5QsXkECVi3R+7xwcGg2LpfAsgprnrc/bq2C8RLGEbIqpZ
	 8fZsrQJVvTCkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1202C5DF8C
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178754763368.31705.11444571636136162667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb4db420808252aa841df13c7d254aae187465c842436266b6c6e489b6a301d3
Date: Mon, 24 Aug 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787547633

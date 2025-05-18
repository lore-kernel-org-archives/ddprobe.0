Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C46FA92E
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747590594; cv=none; b=TurbNNg+1bMLHTV+mkKulV+WQDvP4Lg7JQRQGsrudQZcyK1PmN1FVAuUCPULEiGjHMsspBALHiO1t4qc726AtX7K0b5ir5mE7dNrwYCrStXy5dOUWI0xd7hHY/lW4nO1/HIWC8VE/Y5dQiWiFkp8KSN+vMuAfJLhkbtxeBLyuRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747590594; c=relaxed/simple;
	bh=mSIzHMgVAmGJoJblGcl+wFD5UYpvfZj2lr7Px0TTsnI=;
	h=To:Subject:From:Message-Id:Date; b=aqxe+5SmTeC3r8thQvWXJE4ZMGJ8XMetuu63mLTYc+0fveatzdJC/c5+Gqjl3bgaUS9IPUJ+WkY9gKsWQbeAzBRFubwu/4+TADmS3X3yD6+/FSWUN9PEyYROQHf0z4ZpDM9ujJ4krLQKUp4aXeuxc0j+BhYkoHBRqnhq9+Zvt2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kpDwBBPp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kpDwBBPp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72DFC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747590593;
	bh=mSIzHMgVAmGJoJblGcl+wFD5UYpvfZj2lr7Px0TTsnI=;
	h=To:Subject:From:Date:From;
	b=kpDwBBPppovr+FNjavY3Hb1bsGYd5AM17ogcedfAUkP388TIzOmKLtx37ruDgNsMA
	 5UsrjPPtMtiKMZqfSsXSykZeKnEiEbO25khYuxdtdwRguU6lhQyeZHkmogotn4xvjR
	 Ej13z9/nVIdGvx+EtIQHjVAIPyax+p7haHk0LOhAgdTk+C38vWh2uk0LRSYj9R4ONI
	 FrWpWi5wAtTZrS4BR2XRuqg5WxcBbGxYCLV7HIUJY4JXbV/ItE/ckm2D7tI2we2A4A
	 FW4FD6MSkNTRvRAC0iJbPFazyLXELXeEihTMOfEOph71iqFKhTkON44bOOm5BZBRoN
	 nwLzheQ+MBSAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9267FC3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174759059357.3254.3510655040693430264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7729983b2e625cf03c1a0dfa36c759429484da7433fb9d14f385734eaeebb5d6
Date: Sun, 18 May 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747590593

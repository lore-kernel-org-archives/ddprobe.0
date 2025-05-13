Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D51AD24
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747154995; cv=none; b=egGIsZdBHn7JpQj464a2aIKno1SnvBub4RvaOq3YKwO1Uk1AqPmd3FDvN49VnqT5J0l6pBPauRJvjQ/CgAbldlvCwcL1J73J4zNR5++vAVQf/Po/EEdyXzRuSv94c00pWKM1CyzybXTT227u26NYkUTRoeEXaZVsXyFj19fYLYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747154995; c=relaxed/simple;
	bh=O+HXUwgFnnvhjj+/MeTc7JDd++z8OlpJsHvfAw/vDyA=;
	h=To:Subject:From:Message-Id:Date; b=WcYnpqEixNM3kxNG7ndHEnvl13RnyevoYgGSGz7A2wemNTV2s1gueOX5mde2xpp8hwpBXp/S+Cm7xbQBkwQU2V3TRzGgnLGT8IrCzGXbYynuj2Slksk9bL6ckCSGg/BKnWImr3+b8ImJhmQcpVs+xT18Bx6DMuohrHtiZsX+k54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qL2rJVqL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qL2rJVqL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F4AC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747154993;
	bh=O+HXUwgFnnvhjj+/MeTc7JDd++z8OlpJsHvfAw/vDyA=;
	h=To:Subject:From:Date:From;
	b=qL2rJVqLfHttQGq0e06CgtMLmTbFmX8uPXSsCl8VTIx05aGVYbFfizAfamHybKvV4
	 1VyOyi8M9oJLSKLpHWzM/J5Vfapvn+lz1kMvLi+9Df911qrChEkGHmy6ghjHpaPW92
	 V0EtCYO5Y1gsoZf2PUd1y6QTwgCfnh8ZU0oNXDIgv4B9VUNzcQ+zAHM7HNujnkklop
	 p5e+lVy42hRDC4Bp8/dqZpeIGB+pWzz5k7c4/qpTjJ7TBVKtU/aR+C98j+Q3mr9cna
	 fOIrg26941v8T8zNM/YQnDSMSspIuFYIT/RRvmTuugC/qsIcBMpF+JYRM2bjNW039P
	 HIg3SH+y+b/MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F345C3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174715499357.23361.9631182966179210488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63f993e329ebc5c6d0f12c5a41df8cf495dec1de562a3135b0bb75440a18890f
Date: Tue, 13 May 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747154993

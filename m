Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF4C150997
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766295834; cv=none; b=Y+3VfIvJzU3Gw8ByImsO1IoTjtiLg1HcFfct4M8PxASPwqPS/3BTWVG9rt49Ye5j0wrnAXAV9d0c1C2qNjloYqc8ocgiiaVZFNMue/34kMDb7xxIbRZCNHxk5PsqLcBNoIHAlIuUGkjWfIDrHvsj+LlpSymno2xjH3b89o31f/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766295834; c=relaxed/simple;
	bh=jplyBMqUKfnk4AFIXWtxMWtvaOQch4uvLsp2PGPyiLM=;
	h=To:Subject:From:Message-Id:Date; b=g4U1QqjIL9j+8dc/qjmyQAHwhkY/uTiMjeIV+3I7OP+nBEglGyeaMX4wlCEoaJHCJJzlRWEk9Z0+KbwMtWQ4ZnBKX55c0lt9yT5im/uV1GlflCbYQCIIws3p+hvayQMgDBmJiLYKHstEf5X/ZNvHOBhjlUj9vCQu9NwAkrG90bQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hKBD2GQI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hKBD2GQI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A915AC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766295833;
	bh=jplyBMqUKfnk4AFIXWtxMWtvaOQch4uvLsp2PGPyiLM=;
	h=To:Subject:From:Date:From;
	b=hKBD2GQIIanDar1Ix9zK32DYpZ/KJH+U47k75eje8r5aYySECk/wIHaFOct3kGOk/
	 HIxkxcz4BH4y/f6UbZN0BxXEZw6eI1PJ2unaLe+KCriwraPDWHqcVOvHWTwoan+Hyh
	 1w+gJlI6Ol0QHSiCpMlLtzQeLlt9NNW2rpayVk6fOBoOIcls3cvkbdWGzm1SNM+28i
	 SzjG5UVSXc7Jc16wR1nT8qemsGgY/gxZ4AMOQgJ2hth3zgPIla2ZwKCn2akQz8BDdL
	 HyT/CNORm+ASUxj2APycbGzZxgAlDMDhr+bXkfV1JPpf5SGXP03KVNUsHl+rMX4vOL
	 G0xGauMxvAZqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DFCD68BD5
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176629583358.2784.7162667168275481687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19158aaca9337d8aaaf50f59d1780893b3905280ca60f40c672613b395b551e7
Date: Sun, 21 Dec 2025 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766295833

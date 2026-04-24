Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27BDD1EF09B
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 07:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777014454; cv=none; b=XCwn+qhbhawwPx3pCE/WMq6L3HY21vmwavH3vhHG8kXweuoK7s4twSL4aThWwScglNRPGt1IziZj7dIqZm24ScaAful5AqEuJGj7hz9qEh1Vz+cZAOWQoBjQuPjGCsIGz3C3yrYCauSjG4HkQ+lP6TFnnkb+W7YwBrdBjY3z9Sc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777014454; c=relaxed/simple;
	bh=/BhmGzzqhUVA8ABntPhFFX1wbNF+qjKb/zGsV3Af51M=;
	h=To:Subject:From:Message-Id:Date; b=na7y4U8uNoCinMEB99UUrTLHC0SoityL+j1YrqPRE+QlP2jbI1yXBNakp3avIt/X4yKO2RH4YPnwYuSMgIhnyJ0s6V1PTPSUIJ/e2JH0mRxTu/TmqeLgHKqDRypvw+hxFalDyjddtBa8b1ob5XdbdA5DYjOhF/iN2N+EqHwVrDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MoHIRFpo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MoHIRFpo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB5BBC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 07:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777014453;
	bh=/BhmGzzqhUVA8ABntPhFFX1wbNF+qjKb/zGsV3Af51M=;
	h=To:Subject:From:Date:From;
	b=MoHIRFpox4kCoDnqMZfDOPMVO2PTM6p3E4Raz+8RDUkxNObgoPQYyAzOc/w5flGT0
	 k6kXBvjHvq22tGS0gsJWW11V3Dp+74sow7fnLu2XUzvH5WAtM4RLq3Zj2g62X/SuBA
	 RJnHUFhOgnh4lzh5WLCbHw4QzUuwGl7tCMQ9rBivQIIUlssZkwdVPAGn47Chqbl0M+
	 UoZsPCZcXrsqBJ+I3jUAw6lBF6FDxvdq+ssgMJsWlKNDbZkhKqV8nr2+WdiY4MR1S6
	 Rib/G3R1KjpiEhxFfxCXHT18O2Uy8Yd1f06NtZZCetIyoOi7SsG9FV0PdyU7Fox7l2
	 ZQuuHSTONg4Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB895FB44C2
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 07:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177701445369.4727.6489180333623863298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d158df6319d6a8f6b1acf4ea1d0738f6189acdc7dcd3b836d7ed335db0521dc1
Date: Fri, 24 Apr 2026 07:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777014453

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32FF2309DCB
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768816434; cv=none; b=jcNqnrQ1tE5f10RJFeAqvqL/53gwdYdtFdz7FrV2WqHpn6LjPzcjqMyT5qnpw3JQfJDXCLznXPDF3Edz4Nqp5Jf+TX+bhoBHFCCK6QfbFUYCfgHmj6A0mHB0tMPtnFV69YWzRiWlBe/vfp8Hv2o2vDMUGKlivdwLsudsAYpXgdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768816434; c=relaxed/simple;
	bh=2CU1ufzBiIA3lcND1810FUlM4M+Cp0Fo6bZ1V/7QJYs=;
	h=To:Subject:From:Message-Id:Date; b=J+ZIl553wa3QZfhTKiKOtaBkIGa6rC0CEDGDfXPBr/q+gev/2fLMUuMnK2ZJyG9qKlljTkgxRd8uGtRkYCO5eqdBbv5xp7RYyl+1q/Lm86T89zZLV94iC5ZucwgMgQDp8TTDBziJGcUpa21nDH+lT4Yd/gLNXRbuemIMPvVULXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ld3EWBF4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ld3EWBF4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEFA7C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768816433;
	bh=2CU1ufzBiIA3lcND1810FUlM4M+Cp0Fo6bZ1V/7QJYs=;
	h=To:Subject:From:Date:From;
	b=Ld3EWBF45517s4zu6+tjFgoWKcpF2NeuXD+mt3bmI1e9jTxvqZFfLT8MsCgr5s2Qc
	 iP5B3i1bIaSYXg5V5Wl8OPZEiE3fjalsmkIjCyFtuOcAeueJ1BlUnSAPgeO17aGQgY
	 +cORw05Arb/KDNWFN6ilCdwmcd3Z0SWbtlVQzOH0U1KE4azB018mzTYd4Xb/mfIM2p
	 howz7y92ghM9ARdmSdHAzJ84XtXZGCiULtcturp8qyKjfKYqEkmIdHASO48loL/xP3
	 V53j1YXmg1drNACWDz5zxj/BevA+EiVmnYAuhRdqplLCLdJxVsVxEsGrzHsN77g55Q
	 AtTLKq1ryprQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BEA8CCF2D1
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176881643362.2035.12086333193678415268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a54ad4f3a23a8a496fa641dbe9e8e92f87d5e1703f86f7f40d9f45524095abdf
Date: Mon, 19 Jan 2026 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768816433

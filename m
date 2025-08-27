Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A0E4352090
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756298394; cv=none; b=hAMLYqGgmeTLsqTmYJ5vadM1nHGFfLm7yMaudshDcoHvZI87YKD2g5g+E22np7wGn8ZiLmc5WG6XOGxbJGoYJ9NqbGDwIWPM7oanGKFPMj2XGVDtb+T/vTFauiKYiL4XU9MgolaLR92JtQMosQB/3t7K54xk6VIuALG+CzTVCPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756298394; c=relaxed/simple;
	bh=g5aUD7i2vsGwNz+ZIr8dPmKR4UNNuhhwxy+SXlh4ZFw=;
	h=To:Subject:From:Message-Id:Date; b=Evw59nyqBi4DKKQN3Mfe/M711Sn3ksltjB1LZt77ZmyQtk3pDe2ALSY1mrDXA1Oi45h3gpaAyYXDSn/OAdI8G06VmCfc1U72LSzLij6FpAEVuTdIyzGbrOhnsHZ0LksnTU19DpQKM/x1WKTmnuSWjCxQkRWZWlVgx7q7cz6kZng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CWZpxzS7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CWZpxzS7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC048C113D0
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756298393;
	bh=g5aUD7i2vsGwNz+ZIr8dPmKR4UNNuhhwxy+SXlh4ZFw=;
	h=To:Subject:From:Date:From;
	b=CWZpxzS77X8uDxSBONUVW9+MD9Z+ftxrA8J1YzIzrMwtUYrOvhV32GYYLclAEmch0
	 FtOLY+QCodBJk6HmBetZM1S2RlnAHRREugRfiIL62nRLX/Nn6kOXTQjuaBBSz8k2KP
	 QjqLTl+RKKOM/M8hiYMqTISx3SOcYJ5C13am6nNOcZnzXb0sTdgSCNCeJkGjP8h44i
	 dniiD25TQULrX12GuYusWTYAQ5aQXm5+zN03GGy2NA246KIZlnLvgZ4Kj4OKQ05ohg
	 PcQYzLkl2J2EEAdMzLKDMhW6f+JlA2zHKhQdfjiC3TJYJ/Oj/V/mopVOY7CTDcNWvK
	 6OyvKTX4vbUKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99127CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175629839361.2717.11025178838418134582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 631000265691a3b37f634e8e899517daaddcc96b893f3c106c4d47c24a63d4ee
Date: Wed, 27 Aug 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756298393

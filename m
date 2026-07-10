Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2759A1EA84
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 20:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783715914; cv=none; b=OJKn0VcY1UEYYmFSR765QNe0UJZXVPvVUm3+TmMJVkU+GP6Oxf7fZl5apy6YoViGgw3KODSfkEbgBvk6xV70P1Uxr82o7wC1NzCjR5Z2h+jz5ZrTB2BeqjIYknkRHowIwUxweP6JG386R9LN4sJZP77PabwPoDCbC6sriBbtuko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783715914; c=relaxed/simple;
	bh=H7c0mydqVGLvtxr6GHmzNBNSFa+wL+txWLxroQbm5dI=;
	h=To:Subject:From:Message-Id:Date; b=IB6Qce/75NZAi1SLAOI38EqdxAejwH4tjreDwNtMVezZckHupct9r0XBrp1yq6v9fUATMD4/oogvfQiN5uRm8tZZ38mLp/0FvRJeO66DAbUqCzA+jIPegkKKidXgLAv+Sl4hFh0yMvKz00x8yF8Q7PTPXgbtupeO5ihGSt1kntc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LycYOzjl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LycYOzjl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBA1DC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 20:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783715913;
	bh=H7c0mydqVGLvtxr6GHmzNBNSFa+wL+txWLxroQbm5dI=;
	h=To:Subject:From:Date:From;
	b=LycYOzjlWxGBM4WGYfnDOE4AxouNfbOUx/fdqHXvgcOPGPOHeD9Bg5LLbmrSu7NFT
	 bkL6KDnpUZ4aJ1X7JDWKpEUXZY5Hk9FJsVEnCSayO8xkyb3lZaJjuk3fVIjKsHtiVg
	 4XXeAjD+c6SpE7kEZgimpI8Nmj69AjUMHlJOoClxiLwoJSt/AmPn2OiRewovo4BEuX
	 lmopVCT8U5kAB+O4pPJhvW0i19Z05JbrykJecX7oa927ewmFWYnfavqplSA5FM6Qze
	 eVjn3BdMYe+G6dQM54wo5vOUuXAVzD3+5wejx/qk/Y7sRAtwhcKhWWo2VauUvb7MRM
	 PJMiJsuNG3X8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A841BC43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 20:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178371591368.12348.12253484797669485478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f01cecf4dc00410f85a4872464e43138c379ca6c7a8332c799a07247e9bebbb5
Date: Fri, 10 Jul 2026 20:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783715913

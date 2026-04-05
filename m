Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2842512C8
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 12:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775390734; cv=none; b=QDTZZpQwn9MZi0aYiYOmpmGBtQR4Q/vX5AOcr/ydkU9n9X5szpi6LJvr/rQLli4/K61S68T5p3Z55T2qRrPLd4gjMnv3ucKvB/Qkrbq/+4JM5IAfPCMUZoUWxJOoN8RKbMVVe2ZFbO+oSFI+SUw9+YpUu8lNm0Q+lZTZWro95xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775390734; c=relaxed/simple;
	bh=KV2aXqiK9uvDpYFlgkCMb7XISfKY7ce6PamajD7xeRI=;
	h=To:Subject:From:Message-Id:Date; b=TVj/3f8aFsqB5oU/aEC31uoz5FDyV83LbzMcWxVlWqkkRUoDN0hfTYFpjEa1uJVsKHlvA4sNebQpybdaLR4ccD5WDwCHmC/jx+5r8iRj6mzBc4j7eL5ebPbaVp3HZKO3Rb1ZkTcmBFBKJs4g4i3A2YtIYZXw/rtI2MM4ZxxAkF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JeoK6OHi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JeoK6OHi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0223C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 12:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775390733;
	bh=KV2aXqiK9uvDpYFlgkCMb7XISfKY7ce6PamajD7xeRI=;
	h=To:Subject:From:Date:From;
	b=JeoK6OHiHUzBc9YRdQ2TUq32o9hImb4i0Pd2fTI9sCiHFyz8OAvJn4O3EVo+DP4AJ
	 Knc+2ylcY/OwiJwDgfSN84odkpM8Jt79z/a3YY7Ate0rPVx9+qtvEQCG+9FKF91Vxp
	 jN7rgrIEDuub+WQcsxAmDvXS2Js/dB7flYadbIGNUX4UkKlvoKhWYRTwOLLPqa2jE0
	 DpZv7WDrxTIrIL8tF2QwwJbPjEkAPRGSRWK49myXOcxPWuqcQA6lx9iG0K8Dp1DUIJ
	 bQIyRlD3ymvNoFoQaThQ6Q30iiTcffTOzArVGM8G/0VsfkiAmXlkeO1fDjwPOFW4z0
	 OKePNIDSkvAfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD27BE63FE8
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 12:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177539073369.1716.15392475311043554829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96578914e047a0888a54264e8c2745daf9cc075065bb5c50429b9e49820a11dc
Date: Sun, 05 Apr 2026 12:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775390733

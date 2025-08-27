Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E501EFFB4
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756319394; cv=none; b=G9MRHLUkM4bCulVLhf7fWeR5D1l3bM5j+ZReDA/ZqyMMtoV1dNhr1kcZHdcea7W3W9DXuaKLwQQ95Qnmm7JScyEUIiVAFAIwiTcJUdHAOSV1VLgEmN9Rz84I3tXm8T63qnYwPABzL8b4lYHz6+M1+zgkVwCUTnLsW2v58y0Lt2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756319394; c=relaxed/simple;
	bh=UQaxti+LgpCK0p4h9X5A/brF3XMW9xyVJKzLAvhJ8oQ=;
	h=To:Subject:From:Message-Id:Date; b=EZjY0K25czcoawvsxhRD2coMl6Wx9742wazlacEId7b1Xqdq3PcoA/XJQP9azrapbKeTosG2Ew9xEELpX6Nix3Ovs6h65mnd+NR8uus0S/H71l1VH2FBSt2KrilPRezK2fp8CskK/Yb4A9gm5En3/czTYXWzGgb3LFnYp8D1yBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QvBicSXt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QvBicSXt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5630C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756319393;
	bh=UQaxti+LgpCK0p4h9X5A/brF3XMW9xyVJKzLAvhJ8oQ=;
	h=To:Subject:From:Date:From;
	b=QvBicSXtPMffVZXLnZAWGMM6meMlmKnPpkM4EbKT16iCnHwgW5ZH9eeaUwWM04WFw
	 MYKqR6QymAw9fOuEK3g2GkG2SmgTtm6L2m9BeAQQIcmMeJVo5BGJOfNsaqBc7Lq+NG
	 RuDMvmIREGx1tv6kIcYwBjXnfjKBGwIpynGun0hZwzN1CTf7/ryfVielNP0YH7qTUj
	 5/b+GuKh8s91063Xk5fVAJI9AKEGC9K/zRzsHNs2QvEYn3mQLhoK1h/4l/I1AutEAn
	 gBda673NZgFsQAnoCyienXictN+OsYSZ3rC8RWnG4+5gVNINDUgekC9d4aUo+9FmQa
	 WV3ckK6YDO1CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92115CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175631939358.21111.3177584090498982259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c998b7648f9520759ac88d2984ea844bd4d7167419dfcad7541f5daa0e6247fa
Date: Wed, 27 Aug 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756319393

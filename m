Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 013D3175A8F
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 02:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774404894; cv=none; b=J1QGGSAiPgxf60nZLfPez+i8BbXN321tIsyFTVPpS/9oDb1XcN/L8dCX4rGYyV+JuvoJPYQFn2Opgj5qvpmBKoXo09QQzKk7Zb5iD8uZZFXvoDwH706vALTCqSa68pGfW2tcq6/lSufH+Qk/pU4wUmSjtPHsTArXFsH3uanmnrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774404894; c=relaxed/simple;
	bh=qP+MXtoQBxpbMiLIqBOmBKzW+E9yd/JwS+u6PHLbSAU=;
	h=To:Subject:From:Message-Id:Date; b=TsU7uGWO0pSaZ6UV81Pd9PqE7B5bXSeD+RNIYg895c4YDJzyEmGh/p5y9bygVL2R2jz5axT+Hi+pkijbYANwjb2UQSoj8xuQpfxtE/Xf1cWAOEupvU27ZY3hr5lOGjfEdUcgW6xEjWZDtASRB0xqsPHW3NrumMtT7yL9pZRu+rk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XFH83Y2Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XFH83Y2Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37EDC19424
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 02:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774404893;
	bh=qP+MXtoQBxpbMiLIqBOmBKzW+E9yd/JwS+u6PHLbSAU=;
	h=To:Subject:From:Date:From;
	b=XFH83Y2Q4UOjP1OlePrEJ+yHK2sgKE5EgEGdGpcWIJ4XJ+IkUaRSHVVkq+WX31Vsl
	 1MuBZlYKMinkBsvy8xqLy1pHb7ZU6iQfr7bs5EdQRTiTxarvQ5INo36suyqsxpkuym
	 JeUfDQJS0A9DhOkbfsr3FwBeLSYgEbg3CotawTztFcF9/8NtD/QhiIYSGaBSoJZb/t
	 aEDKu+VL6zas/l+k1eMPjIAIJNNVz42OjnL3P6DWWhRI8h6TWI8Jj/GHCyEuUvsZYu
	 tjzOwN7irfPRJ3zHdV6S8nn8ZVjnT+HwXj+pfwwcXWKzABNGi/Uvxx8vSNinXzw3GZ
	 JT/J1cBEqsQOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910D21093176
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 02:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177440489358.17406.4533893639401739337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e72b2ccd13dbb532198b1bdd32e85fa31ee7a1a9b49ec36bc06e358f0db9557d
Date: Wed, 25 Mar 2026 02:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774404893

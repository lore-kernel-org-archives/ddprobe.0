Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD81A365A0B
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 21:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774388693; cv=none; b=TwVPiZVw/BrP19pLW7EU7VWB7OcwhOT89gtT9kh/WB55Xceynanw3GSP9rM7CXQ6xzB2q1QtsvgqmrHsLmvfmjltyLrg2Wg80pzwZGD7hEyBYXt501Xhlmq2DkshPROV6B4ZZc5l0YoedYx8gsk9cQIl411ynjPNR9FMrNK/ek4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774388693; c=relaxed/simple;
	bh=XJDcPJQ9gHn7NNcqw3mIYW7k0PDJzbYNFfcvKM9ribs=;
	h=To:Subject:From:Message-Id:Date; b=bB8scmmhMzQNgf5h5FHFwA5xwNL/9d9uHRC50xhKDjhYPM08nlXYpHghHU2vH4+sAEaJLGAJnNb3jwoYtIgP+UtfQZ1W2N9Pxto714cdGt2Z6w1QoD7OrZCvCqzNCJZJ/AqTQwQGc2aSbU29Wiyw77Bis4xxpzFXsMYbVNB8KkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OQ6xhaUk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OQ6xhaUk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFAECC19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 21:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774388693;
	bh=XJDcPJQ9gHn7NNcqw3mIYW7k0PDJzbYNFfcvKM9ribs=;
	h=To:Subject:From:Date:From;
	b=OQ6xhaUkMedYWMf1JjHh8F4W33L4ssMojjzqnIj2LTmsoluPDWBlncScrWoCdivhW
	 8lz+Plu4pF8KZUvCfdc+Zc6mUHKvIR2xHXujPSGMeKt+XqqnU3aRnR57t3Uf+mY3WF
	 tRIe+st+LysZllUl/1c0F/Z1befES20EETZUcueraLJ6hZbUBkjvev2ENALUzYLB9C
	 O6YIa02sxFQNI0zqOahF6U8HY69sKNDmvJTAIWOpp6n04HrqBx/pjDT/oRHfoUotQP
	 ncGV7hzBoOiDCI0OiNNwoMbohewdOGf6/zyT6EzAViKmQdG9zNtkbWtU8ZC8f1wZpi
	 BqnCQg3C6mGLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E04EFEC11A
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 21:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177438869363.31559.17341149110795757459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1263f77e27773a7de436e3663b333755288074f368d290c4904cd2fe91f7b4c0
Date: Tue, 24 Mar 2026 21:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774388693

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 568D026F462
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744348794; cv=none; b=mSQ3d2qwKzRaumTGCECkOULfr4w3pfyrYV/TwUYyz6CYosISSEq5MRd1V8fojKUOmm8KRSVO0h3Sp7EIhblBfj5LldQsLidc7lky3wrGDUTuZU1rYuskC1fTNpy55CcrbjS3Qv4za1fmoBcA1Y08+e+qmIto22+47XTP6Vb7+vE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744348794; c=relaxed/simple;
	bh=adYeOaPkWIKOcbKINHfUMc8uqpbsp45I0B03q5qMSpI=;
	h=To:Subject:From:Message-Id:Date; b=aQVP0+wuGQC89z1CsDuBy+NkCiNu1EYPsIgVyUgFy/zYKLv/dwI2E/KNvO9l+hsUpLy65niuASu/AfCH4gvB/JBjnfHWtfy2wd9FMIcL6a+O0BMWCl8db10N7uF+lZRmska1wpZRyi22HUK8+M7WrgZIpSoE/xIqRZt+3FrCeHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BoxR6iLA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BoxR6iLA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8792C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744348793;
	bh=adYeOaPkWIKOcbKINHfUMc8uqpbsp45I0B03q5qMSpI=;
	h=To:Subject:From:Date:From;
	b=BoxR6iLAIo39xNUNLAt6/1RgkMCBe3/FFf9zjurrV/Vz+SnIUp2h1zASgg1ExfiAf
	 gc6QAhMf9zI/pHgZ/QRms1P+Ib3ZscNNOZyz1OGppjNZm8ueZLn3psZZ8r3lxxO2Ql
	 ZxCO7O4VDER8Fjnv3N8qmJaE7m3Qqj4rxv7C9TQk0FaWrIy04p7XrxB57fnCCUikKL
	 PLq+aXlXspSyZ7pdf29XFR6v3KsAje43yZLmDsYKGOMXOfNQFkGr1i3D5DNjbqwmdQ
	 0UMUKP8ksFD+NQgbBj+iUXhLupOHsEn4OOr0UKjWcIYGtPa/fsjousqzd8CM2164ZX
	 5ZSNi5phwc0CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C200C36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174434879360.2836.13521503560599826402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b9d0579dbc64d7d8198ec84c8b0a52f9d5c9d275a3bd04086481960f2ad8133
Date: Fri, 11 Apr 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744348793

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20FA33EA7D
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 23:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mw3ecVB7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FF2DC433C8
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 23:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703029696;
	bh=dZ4oHkBGYs9502r7bPXB5TRWuNQLUYrXO3Z1dXjNWv0=;
	h=To:Subject:From:Date:From;
	b=Mw3ecVB7nsx+GdZ4tXrdj0tr/itW2CLJQ7g4E8YQ9dUJ6S7O5LcSsbTl6vfBBiOhE
	 Zw9h468AlNtLIlEY6oQCdEw+yS4MYPA1Xt2Qs1KF6xy5cdtvQk3V46zNoiT2wGUoJ3
	 HjKZtJfbbJxPp6Je5V8w+8b9iESaMsPXbGJ8w1alxYpSOrJ6/PD7cTB7yWEHo3VCOb
	 NXHmPdcmjXnRg7Ie5Spmf5S3dovdbXLnnxHlHIHZQNiDTv/Km5Wcip9D3QF1MvMftN
	 E+i2U4j17CXG6/Sb2BL7dIMwZxTWnWd8XxNW8docdUBSwlf8t8/MGy+w1CrktaZURv
	 0Xq+daI76SdTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75785C41535
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 23:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170302969642.25483.7255964417056798136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18bcf824ffd868f81af1fc005c2183d3165fe39634bd85ddcaaa4390b81e3a25
Date: Tue, 19 Dec 2023 23:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703029696

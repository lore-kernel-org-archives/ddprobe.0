Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B11A32
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 02:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aGzm1GU9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D2A7C433C7
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 02:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697855296;
	bh=u4q/uclCIl2cAzAguOZ+nHE5Mh433aDNuz11y8DGCaA=;
	h=To:Subject:From:Date:From;
	b=aGzm1GU9NCQYzgkLgRcaMfHR2f4G/cy+6OJkasMMSGAayA+Gkt1mQdRfqxfF/7Lcn
	 PxFR3EkCGA8O4Axejgl+fS6jYKE13OvSfhbmb8dEjbAc4igqiwEueCBcG10ETMZUIl
	 GYoIklH+cad5qihXPENeBgcZYgmKYPzA+4juS3Pq8hyAD2b6mYyOYPwRdHcZll9ff+
	 qbEXd5v211AsFs3nZHgd7yNxjf71eu9ulcWL5qnvXkFkz8Ba7dW+IKegH0A4MMkBm4
	 CnMDVWjp5JCjwWGpRcjp91O07ceh201JdQPpuT3Lyr9g7VPMA/Q0Z9OUDKaz4iT3Tl
	 K1vfc/M1BNEHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 758F5CDB474
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 02:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169785529644.32593.12099886185393785635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e347880d8b2807d5d6587320ca4b99a41848a90ff719405e48b80af33fee3b2c
Date: Sat, 21 Oct 2023 02:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697855296

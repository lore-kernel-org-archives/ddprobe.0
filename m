Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6BC32583
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 15:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89ED3C433F1
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 15:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672153287;
	bh=AJfvj4//p482IzTc23AQyDE1zYBbbHayEeP9Ks4lynE=;
	h=To:Subject:From:Date:From;
	b=nxVOta1+Qv/sSKyrrCFK9rTVuFAUAOGAH5wtScTT7+rC9cE25ITRgQKpwHTXyc41O
	 3mDOtQ++y40FJlebYKUnwMWcCCI1O/+1eEI98Z0UKAEhXdW+vINknPHG84A7DMUsN8
	 Bf0Yawh0uOY27TSpiGp7u6yx0tGPEg4D7unGyI2r3CN9MzjOlsMD9JkSmD0dPSGZPs
	 8nTaIg5CMeG6brZ6jBRfha+jDuteboVCFNR5EsxUr1lFABbBkYQ1BRok8mv8Zd74J9
	 49SxSsd/lyKP2Nypw8/QhIlQP2Xk/yce7B6A7OVNrUZMUvJiUx4WG7pvNGYGeXBWcG
	 VUXG2EnTJ4RVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6967AC4332F
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 15:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167215328742.4614.13373358264118045611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01068628e45d8c6c8bfc8540d5639d07e9842d1bff5683a57ad71413f2a02668
Date: Tue, 27 Dec 2022 15:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672153287

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D101FA3F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 09:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E382C433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 09:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670579487;
	bh=wL42XK30pmNb1R6C0NuLCpuLQgGH6oNdd6k1awyN/gY=;
	h=To:Subject:From:Date:From;
	b=uAgPzA4W65eNtROedGgAJxY8NvINlqnUVWuFpDl+8HXNq2uvVcLRD6nP/7Rixm2v5
	 i2fezrkWjatsHVlcmfSSL3UihM1341J0PrwhYtNNJ4HeCVmSL1MAQy6KJg3shoypK3
	 pYew7zx8HSKdn8jjrx2Awgja4eClMX6WmSBsyPWqQmLpDurGOl3jAbWRXCpisiN05G
	 KYVcx/DgWlJjiJmaFLuYkrSBSH9Zspof31FTZv8C0lruSICxRkIfqttG0BFNZtqTe0
	 hL9jlwcck+80yd2SCmXy6fx3tb3A4ZNGDb4rZ7ARZpMpLaq8MDpNpvmjypfqaMcWDO
	 1fjIYLipe6QTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63BB4C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 09:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167057948740.29224.3161403421662753710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ffd5b9b07b43e0122e1713ce882b5fde764093590d48f32ba1414a202932093
Date: Fri, 09 Dec 2022 09:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670579487

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5339915A8
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 03:15:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC087C433C8
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 03:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695006908;
	bh=dIJS8nJrgIxg7R8ymd9ZTfTuVZ2pprWA2c2LylpbX90=;
	h=To:Subject:From:Date:From;
	b=ClMKArW9iWipP23aVEce7bI1Csh8YgIHiPVk1hPH0Z0WW4Gg0YqxhbXdpqFiLCQm8
	 Vtm9oN5OYP9LrixPMzwUol/KX3vst48QAKG6rSbCSRK8KpNUw8GyGmOSu49IHLtCf/
	 nCHTmcn1E0D5f92IeRJuQTgiv1CBVG793tDj29OL9+dsQXJU6Mviq3XGZ9GCvOgxH9
	 qREGkZnzxVYYz3shuvxq89okBsYXU0uD0jqlaId2tfb5ewXrA5vCb1ZZZwsmhwZhS/
	 9VEO2Zv8ZBcXRLvBdyh3Mlslq0mOZlBI7mRDE/F5mF/So2/Lc2sI2h/n4y6qdQY+lg
	 R360Oxtpnufwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACAA8CD37B4
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 03:15:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169500690869.17434.12285690959569497590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4d2b4b545e76495aa565de10da438db49d664e69cb944a080213c159b8505f3
Date: Mon, 18 Sep 2023 03:15:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695006908

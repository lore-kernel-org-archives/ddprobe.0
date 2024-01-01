Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25DE88BE0
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 16:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JntmOIK7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AA70C433C7
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 16:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704127696;
	bh=1Tra78jM2ZoQOrNwGZOvgD3vU9FYGyZikykRjm2KoGs=;
	h=To:Subject:From:Date:From;
	b=JntmOIK7nVE2BMNPdnDU4NIG+oNYFdf7GYri+RTVe7OD5Pbe2ir8tV5ny9i9faJWJ
	 LiccX+x7C289M9ZtVVveg+hGL2KcUMcu35GH1jaHQ4Al+AxqeW5DK0BvKvhroEwhG5
	 w5iZT5oZ9cUk/MBUhFcRgnYYfMr4Tbqvo9biY03Mql49vRKcOg6SLyU8wJ0LqLHOS2
	 b2yc1J8p7K9D/WTCL25O8K5JNWRX3a2OVvsoUXTCutNVkYXyzMBHpPo5nUBq0yepBk
	 hYHIdjzSWsYeaC0+Z0qfa55mSA26cH2TKhNFp8TpYiP0V5CDaFCRu8C8+jmsXxnUUV
	 wJlOAzmtbRyUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68AF6C4706F
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 16:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170412769639.30007.997824782617638754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fae3ed40742b00efedb160eff3ea48168b658d8c434fa7a6a444a150d75ef000
Date: Mon, 01 Jan 2024 16:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704127696

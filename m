Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF2BD2C80
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 14:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C9AFC433D7
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 14:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661783452;
	bh=BmzM+qAyTj1Lqf2BdoBQ+vBVqtxD/wpbqH2DniIh4hM=;
	h=To:Subject:From:Date:From;
	b=PrwEb4TAk4N23QteQ4LT2bix3kFhg0CWMs2wxIPXBPJpx1TzDkeZVf2HO3Zf/aG81
	 vRB5iT+oSXg1cx+I5AtvdqPNE1uLFsgcp/Vl9hRVCVrSyTvHfnl8bCWtqGaxEfDYng
	 HAykEEes3f3PiBo3vfwBe5/MZVmVvouWDasxsOJg+DC8NfqkOeWWeNSbI5T4QWGcS6
	 +XWm33+zX0l55J+skohmuix1aUSiVV3oi9AF/NLayNKqrFU+ifDcGvfhnxrhjNCBj/
	 vWwO+bXUnajUATB7MnUgQUNK6R/EEoyIe4apGsBr/67ubxsIJxLjrxUkjZ2ZOscTM6
	 A1/sIe/dklsOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54679ECAAD5
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 14:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166178345233.32195.970407530823297471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89ba758f3b2ae36deb8dc2c7f9b603ac612844164ffa4fbea8d1227ce224e794
Date: Mon, 29 Aug 2022 14:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661783452

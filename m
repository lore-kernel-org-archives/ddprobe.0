Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDB9D3D60
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 15:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CC7CC433D6
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666279853;
	bh=oi1ZMVrr6Xz0y4MNswTc+KRy+KaKWQ3COLMM3vi2+1I=;
	h=To:Subject:From:Date:From;
	b=DrxKl9ohu4LH7xfSRCgt01GfxHIjH0B8YpBFwHvcVx47a+hNBF/m6dyI7a/43dc3O
	 ex5Gs6rvEmXm1DgOiACEb9VZEU2qtpxSlNmhVpghPkxgjx1eKA6HlrdABYuI7JOu1W
	 5vYG4l4TAs2yUnDhMFWBhZoiCiCxsw82EYSVCzo0l2On/7/9TMALvrbusxSWPon2/l
	 VNpc7LLmzLoRTzn0qh5nbW4KLRM0hqumauXDSXGvf6vpoMzhnFV8I8TRfMnpqPqQjU
	 ZCnu9EGIzCpmdTqV6YrHop+sb+Y5SuP3Kem1ru3b7gI8Gh/zDZX12b6no4PArzRM5J
	 rAPZDrkrkFVbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50BCBC4332F
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 15:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166627985331.20719.13159333969765156980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 641dab83abe4b9ad2803c3597db47919fe0da1612f1c5bff1ab05ba8847ad463
Date: Thu, 20 Oct 2022 15:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666279853

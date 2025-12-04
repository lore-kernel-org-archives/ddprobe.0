Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271C8331237
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 08:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764836574; cv=none; b=lp6WxVLAFPgvRxfojT6wCNB7AcIqTHBKtEUZCF6M8NzAT+hzMfPUDbeOjOpQPyCQo6Jlv/UkBbqivbTmYwKv3xSfJwM8MqXWsTLtgFb5jQl38X/C3WDi3nqAxrZ/HLMSnAfWo6rXaGeAOeeG+fCjmfbvHSaU0gxrinjdXJGScpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764836574; c=relaxed/simple;
	bh=akNWanHABc+qtKpgWo/iwIdhdSi4mTO+C0zvYEjY9SY=;
	h=To:Subject:From:Message-Id:Date; b=qx8+vykbGX/kh6Wlm/mOqM/CfQsKtDiWr4Ek1sMNIK5J5ORnnAAPNvZO3FNOLPSCTd+gkzAR90/WfIir9H28xHlS0C/sN3wSVuJjDGtk2gCd2A4/1vSiZAqUWDKPzzpCM6brBXd8Kn0eNdgk9E44y3Jy/2VElrhgUNPmbxhacGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lPmMsxrH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lPmMsxrH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2967C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 08:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764836573;
	bh=akNWanHABc+qtKpgWo/iwIdhdSi4mTO+C0zvYEjY9SY=;
	h=To:Subject:From:Date:From;
	b=lPmMsxrH+0+IIWcggxH7r8MYP4TeCOfqcFoE5mD+Xx/iyWiLKfgUtburAvIJ2umFI
	 tO5Rno53FnbVks7hRCropWt9VddbGbVdsyKBqZD58VQhQ3zOiABCwQ9+iP+6ECCOYC
	 Qaq45x16XMU/k+DIJXSIKOL2gYpZnh555x48MWzRUZoSd3ookNolLnwJ+eiU2Fxyoq
	 Hmqkykzzyf15ynXOYIaahltGHki91ZVDfzHYXxnxsSrrz1IWjh5s5lfshJOEHvDlf8
	 CTeRug1y8Y9QlRwKhX4QoKqOYPldYCL+H9Niuzdi6X+UZm6aaQzaBaechy97ZIhfOQ
	 L6lhSAJq8x9qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9175BD1D892
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 08:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176483657358.2144.9234409026340766874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b343d19b3219c802eefaa3e126fd80ca67fdea215f264d843b548e6e448c1bcc
Date: Thu, 04 Dec 2025 08:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764836573

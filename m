Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA5A34413
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 16:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BE08C433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 16:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661616652;
	bh=HvEhKitgiil0KoMqP+j6VBFiFXW8pohtha39YGr44bc=;
	h=To:Subject:From:Date:From;
	b=s8mt+vGiL5/1lzeTKmAwmPS2wAzmVtF3qeA9mNdGIRa2HWZgTU9KPqxoegCEZ193l
	 b4hjXFFXj5okrQ3THrL6mC9IubxRdX1pleI6j9W5B9U7GcXb4c6mSMlvX61+ze5c5C
	 0F7bRhDlHfl2QtQNwZAd6ukQjSGnT8MuKwAo16Jy+IsSxfk5XFX4y/J/iQB5x2Bksi
	 IvAudEixCkPv1EuL27kzYlV/QpHqlqQdt/GpxDljRqNiN+xnV4AJ8C4LroYDzAzgag
	 KaJRMqOtokX7dCjwOpKAsjfEijZO/vgGvpPwPJhpu2uq3gKyl8+aIzFkxpF/MR7nn4
	 ti5MnLcDtWgew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54F47ECAAD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 16:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166161665233.11079.13210155565919888855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf6171850a6a566a9220a9e72d8bb8697332b01f3877c15e7414a01479eb87c2
Date: Sat, 27 Aug 2022 16:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661616652

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D303253350
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748339394; cv=none; b=ITbWw9Kr1uKmz2dLSO/L20Ympx9YaF9o3WAfA+Fmx5udJhAQvIU4kCTjLdwz8ZLXNYkYrWdmYZj/B3nT1WH58rPYaiSmCZsALMvN/FM8gjNtwB0qlcTSdR4cNMlAqqsFoDK7xdkBSqQvScorNC9gj/big5RB6RsB8vg3IGBzIFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748339394; c=relaxed/simple;
	bh=Kx6GTZSaaYhE6bLzg9vHet4L/PSUYPDRTwQdm4rxzxY=;
	h=To:Subject:From:Message-Id:Date; b=hhkWDbGKkVOVVCn0WP2qYfC0ZxMk9MhB1Z9Ex2Wgqqa+NY486gkbEiXrPB+J2uclg5Gzg4W+wgaVOBc3USRAzpTGwYLtIUNeD+TKqa/lg7pxz/olQLaWr5HRK+HG5QUwA94/4h4f9DLmIb581NNdh5LkKk31+0DHWwuSuh7twJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LNRmv+1b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LNRmv+1b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC76C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748339393;
	bh=Kx6GTZSaaYhE6bLzg9vHet4L/PSUYPDRTwQdm4rxzxY=;
	h=To:Subject:From:Date:From;
	b=LNRmv+1bNO46btoVsuDl5bKu+0plp10B/mAseSs9V2hRoHt7qk66zj2qaR3KzjT1B
	 DK7iuIDiBf9gdER5nrOjZHqknwvLNwRrwJgwoCwOZ0IFqevvRB4emKpNYJ8KfTmd1F
	 ZIUFfBlBZq0Nl+ivhDRE68bWRnHNSRn3bolVAaFBiFewdH4aVXf5UcPvrlVLkhYTYz
	 B8nyqjH+v1riwoZWEEQJyWD+lOf2HyVtq60g+pviGJz7uk5JR9w+UVHJ+nFQy61j7W
	 bKr/UtWKzKePinTOJAoBqkoohSA7AjbnsUQoBw3SkG2rKpvep83q2wJtCJi8cn43bQ
	 nPYSFwVMuKsdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B27C54F30
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174833939360.29823.13512836831307116798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e89091675e7825a05f558f730c470df45acad678351d90c3e02d803e01ad2419
Date: Tue, 27 May 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748339393

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ABE97462
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726908954; cv=none; b=Xo9t8CxwxLY9lWBXk+cIoRa2AZYAlp5/Mo+nZhBXrWML8GZBY2Gm0Z08xkA87nnN8tz5wxp3epSL88RgcnjC+ozxKXLNwFwjsfiNjQjlVTVAkWVLfPADTW+cw9n16/SCcFBW7MkYvITJ0DjMfNphfSCPy8yQfX2VfuPM2hIlRyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726908954; c=relaxed/simple;
	bh=OSKRVFOWcGIfo79kEaMtpOr3oyvx5WChGAdIWDwtUZs=;
	h=To:Subject:From:Message-Id:Date; b=cOxNhXCZvpRfQJs3XcRLjRrnfp7VJcDnsunOAtyHuuasOk8vwt1x0kK6J1KjkRgTDfPSjW67gbQPpUVHBNFuYokLRdAMnpiKdOTNahtWkMKr0zpTyX6r6VIldAUlVLK6shByI3f6emyrPMCawpTkFWcZ1X2MoJKPJcfTvtW5OxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BJkwTmYG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BJkwTmYG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D49C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726908953;
	bh=OSKRVFOWcGIfo79kEaMtpOr3oyvx5WChGAdIWDwtUZs=;
	h=To:Subject:From:Date:From;
	b=BJkwTmYGiKI0p2hb9Dhe3417e0t2TPFkctMD9KJXy3IyvZXePsSRRXUsbPomwT6Hw
	 nZncF2K4UseZk0KjwsF2gCdjpybkw8ra8KKhd2M3Co/xmPQyuK+STKuD6ZizlIVMay
	 9bfIaD5zBkYQ66uEE5OKVP2aKqZGCDzjVaXcA5x8Dpdshffv4tTLq5j3Ipw5YTq559
	 OJDtGN5yl+6Ukbu3amLfSjfrT/09TdziG/t2YGFNAPUb+t/nssVkwFA3dmLeLaeWvq
	 WJ7UXfhE6757pns5y+L8JbeTUjb+kKZxiOmFUk0WNhLvDrGgADZBZVz3fG0zCP57rc
	 begmNUOn5HOLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9699ECF9C5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172690895359.9139.16738083289735119912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0877c30cd97cd8760753f8d0df38777060805c30830d73cedeb390fc7bd74653
Date: Sat, 21 Sep 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726908953

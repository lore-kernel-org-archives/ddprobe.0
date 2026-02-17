Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102FA33993
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 06:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771311294; cv=none; b=ThOg9wlDRGZb3tBG2CWjX1neL1SqVc73CNT41njwZJtDR6f+y7VPA/cwW4XPJCtgU2HkampLxulqZ70unk91WIRhaJcqMWYi8IIIh0XmyD5o/ALTNrqz9K2vrI7eblieHwihIAGaL5nkNT0lawVnVBVNznWNBgQdpN3TZuejDN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771311294; c=relaxed/simple;
	bh=qDNLVdnxsn9sO8bpDcBRZpoMrUZ8khRO2OWaVQdybDA=;
	h=To:Subject:From:Message-Id:Date; b=Q0pm4t8jEYKHY6Q8xBrklhOodEbWR4pm/6bh4r3C/sJaaHd8akzNSsiD/oW5GkKdWKMrnS/EfwpSRipBLWuMdvCUjijf4tG4wdk9cIw8lvrwGKtGt23uKUqK9HjYB54ejOE4spPzdDEUKGMv0Ui7Wm42BVvfP2xfadjQ6cmjIZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gaOzz2cS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gaOzz2cS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A57C19421
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 06:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771311293;
	bh=qDNLVdnxsn9sO8bpDcBRZpoMrUZ8khRO2OWaVQdybDA=;
	h=To:Subject:From:Date:From;
	b=gaOzz2cSxGlOM2ZiECe6l9Rb2QipXVb/w5UIr+vZldVbY0/GkY+SYH41QevbprrnN
	 X6Sp4FK5FaxSlKzervH5Mba/JvAXl2W8cvlP1U/2pJ3iTq0at1E9UtGnXdw1IiFReD
	 3DBh6Hs3B89TrfaArRJnjua20diSIQyq9folVRFU2f0TQC46Vv8N6QOIOLaaugbP0T
	 GzH43jNP1MUaYxiKwUhL+/dUAQ/8kFXGBk39OApBv/ymFsX2uJtaEcXc9D9CA7Vkf9
	 O/+0x9ADZ9CFz+JYHijkTnA3MhIG3onrJaD/xGAmVCBzaZ9l1di3RCkVrYoBkpjq0R
	 ZdnOOssGWtlZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA92E8385F
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 06:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177131129358.6485.3818256246299214079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 704b01c207503c804737166d179b1413206ffdf3e2b9e20279dd40db935cd61e
Date: Tue, 17 Feb 2026 06:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771311293

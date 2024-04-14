Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 707EB1CA9E
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 07:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713081563; cv=none; b=KyvItKfVOKsOhNH3HHyNopmvvF4efiWu8GKaEXLA/O/YXvuEuW6gb9WlxLLwthcNossgqDR0We7B+6ZRYCER4b7h9pJksUaCcfZmwWlsYfdbJM0xV9ip6uvFSG3yh7ZgsQ61c/gp0rxdpfl16DEVUgt3Cp7FyAcEKFhqPhZus/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713081563; c=relaxed/simple;
	bh=HFs+8VgYbrwtfcxgto+h/8EpM3qNVg2wr+9BAjkkC/Y=;
	h=To:Subject:From:Message-Id:Date; b=fjE/cYIoydFf3k2SGyoQhgtJMdru2jLnhPe8SkNaPz0k/xD2UmQpZaHwfvh6uQa+Tpuhm3nglJO29sersG9WrOwCq0vKJlQipyqQrEnbLZWJ2uTtcH6ajYKrujGGe2Q+0DELxA26KJF6XIKmoh6L0IlvLw+h0+2t9m5i2mNdzI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u9VMU/Ft; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u9VMU/Ft"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAB45C072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 07:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713081562;
	bh=HFs+8VgYbrwtfcxgto+h/8EpM3qNVg2wr+9BAjkkC/Y=;
	h=To:Subject:From:Date:From;
	b=u9VMU/FtS1LlD2CPHO2sAUTPVnvgvjCHt6bW47fqHCT4E5mMXYWWy+2Wdnb07rl5S
	 wAKkNgILrTT2S0s5etSDvPCXj2s3F49kmuxFQxKmodygd3D5Mcx953VRFBh+UwzwW+
	 zvWMwXEu2vpFq8rw5/pJADa78Go+V1zbCgErr28NV7q/xW9rTS8hEC2q8d6LHu1Oee
	 nBYJzXlBxKZAMnOzDdhwJFw8VW+WQssMW3furSCKt0lhgep6IW38ZCwutIQ6oelQr3
	 aurIiZK8F+AFToRTae3drEOUkFiqmAUdV+YujgVgIUo5E8u/NmlV1kak7mWb2+q6nM
	 EQ6pEb6kb/uWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C591CC4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 07:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171308156277.3615.6665156728477420071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bf88c0d6048a398bb225b4ed2306587b72b2dc10c3a1f49d80b0b62f4e10c40
Date: Sun, 14 Apr 2024 07:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713081562

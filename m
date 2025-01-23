Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33FDA1537D4
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737624354; cv=none; b=C1OHTYd9M0COA59RAvmyNLxBV6WkE2bZOC2E3xvyJkKqUZKgWNr6EPalBDhTHl0HQ3Qiw8Ct6JthsAdHm4BF6CqQGFdoYlnFNrQUI1j/vZMpMd8AsBXNeEaNLMqDCtzIRq6ZidJKh1spt9uxeusJPD/UfNXAmobALa704qPJ8Mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737624354; c=relaxed/simple;
	bh=o6sElZsGQRW3z/mx4cWSH+T/+/Qm8XekpU4Vmuuj36Q=;
	h=To:Subject:From:Message-Id:Date; b=SD2USpDHBx4vrx9OETlt/h0SLnZVox1UarJEOoFPrP7Dv5W4WHAcscPfmv3DmWEN+Xa8geNzMKjDNUig3dyAFeDTPDMSqtXLtCi0cYcexxCyr9JVc/7klVYj9CsrIBF2DES+8QhICFrGDDIrlEKBHPQ8NSa53cBa2bKkDwUuWr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fKte4EjX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fKte4EjX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2337C4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737624353;
	bh=o6sElZsGQRW3z/mx4cWSH+T/+/Qm8XekpU4Vmuuj36Q=;
	h=To:Subject:From:Date:From;
	b=fKte4EjXxoKUjkxgThh2xYB7VBpky79WMXqZVELW6xjXT1DTGX6tZhQhQ7RCciQ/K
	 Uk/i4tVGr6ZMaFq6Gf9nVU4tm761AsR90NE/x+G/SYDaWkS0xAo5aCXAVZ3DbcpgNK
	 V5IrHtVmpJw2qodEYWWo00Tfw3k65+A5AWs1wwhrm/JMoXATNY8p9hHC947yrjRtlV
	 QQ2QNL/3IR2viNizHbLJBpKNvgQV798IQL/gGd92XN+LL9MExpxZ56gHUZD62xmftb
	 8DNOyBcLhdxEEjN23Uifpv+sWhceMXY2AeRSY4b/SvmDThPuBG0dm2iDH3keuGpmyJ
	 8hpj9JtT0WIuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C49C02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173762435358.13626.6549172920947808720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84e4d645dcaae1fac92beef10ef03f603f23ac7f8fc204bf4baf630dc5251141
Date: Thu, 23 Jan 2025 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737624353

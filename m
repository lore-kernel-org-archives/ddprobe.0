Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0E313D539
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 02:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766025834; cv=none; b=Xr6hj1eT9/PqfHuNNRcDQMe+nnUmPOnnaFhJ1zi7mmUA0Uvn7BS2/tXvyQ2z29g9xaYCGLJTGg9AU0ylIHISxDVVusnHE5uaWzlz7iX2JBPFWklWQPcRHTkGlMq+GiR2hAEZv54sdZ4yBtlYBrfBIpZ/LPXYJtTYgHPVfBsYRNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766025834; c=relaxed/simple;
	bh=LlYDnBbKc0etKKPMpJKDVW/hZYtXns0Q19iBgNCItv4=;
	h=To:Subject:From:Message-Id:Date; b=Ypmn2CbwwW9VhBTuZ0EW/BiXYPci//t+Pcecj0nzSPjR3B5XFno1FyHbGSe1o5OZPLYDuVze2qZloR7bfpCCOEsxyco8xXdr9JX4OiIjrRA73JnpI+HXlNMWOtJsakuFLuEBpJkPGhBxm9ckn1VOxhXrhIuHITsqb2Iz1fuByaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pnRTXETj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pnRTXETj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE75C116C6
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766025833;
	bh=LlYDnBbKc0etKKPMpJKDVW/hZYtXns0Q19iBgNCItv4=;
	h=To:Subject:From:Date:From;
	b=pnRTXETjdR0eOWy+FbhTibKBoeFYdHNl6afq83A9AwjoIlMo9kPciCsL2x97mSVNn
	 s5l6KljNyc0yAZtoIDJMTm+Zr0HQuPzs5EbTKDZNDXLOOBemlJfJ0hb6WaoNRjvYJH
	 B/QWsA1AFDSQUf0e23tiK2TmTisBPuh25/kiL+4xoWs7pcKr6cA5q3iWht5k9JKF3v
	 1M+O/WwYZyOa6F/VJSAZPGvtzVP4OFOUlqftvSj8oCJU1H6fgXsCOrPejtG3Wm48bb
	 xOOaHilj/kvrnY8r0ud6UPFmPyYfEnEG5ufTbJRGsUIdYanq3sY6oLg+5yydy709vF
	 VryWmwu/1BWBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9003CD68BCC
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176602583358.15820.12329205793933983222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eddc6920422561f5b69065293b466d95007ef82cd40b6651de4014f072c2ef26
Date: Thu, 18 Dec 2025 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766025833

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0C3212D7C
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 23:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776729454; cv=none; b=ALq/L/HHwiL9Y0O6oVAJfXkboyRvxMPaZqOnVUlRPt+lPVQJN7Ukb45/aJ2/t3PAcmVyeYnbMC3kFe44qFyvFQny25yPLZXsMwJvmZDwjh6595OOdNA4nclWMnhkZ1Su9ZivL3FuZDhfPnAA387T70ZYdmhhLFqkRvZ96LjsCN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776729454; c=relaxed/simple;
	bh=QHqyBaXjct/pkpFE7+x/KTjJIJnW1jAsK4UsRH0bRz4=;
	h=To:Subject:From:Message-Id:Date; b=GBayd4tvJrnvJPRDXuvPp6fwMtPkXAJ8eEwHIVaYzf5QDQQlyrft0pxChrSL1UzsIrnyZAuACkn9bt750PtK6hG/oCgaeu5kksUO1sBtvBDIJSYEjtP4w4Sc315PlUKkl4/0C+E6vLbFxDCKjqy1N8s6uUuRHtKtAd2EelrMF9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qEOuWEzY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qEOuWEzY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBE92C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 23:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776729453;
	bh=QHqyBaXjct/pkpFE7+x/KTjJIJnW1jAsK4UsRH0bRz4=;
	h=To:Subject:From:Date:From;
	b=qEOuWEzYJiydfkp0mfJWKDhFlGvP/2/9GesocKGy0KHKGTHailgkXkD4PXgS2fbOI
	 N59PGqPAhckKgLDWTn4gHkVEYh2wURTwaf8CzBoPe9iP4W6kHfWxHub1oWHYzophCN
	 01bAwEZ99DOdgeO0aAdTTZ6W8MWvqt4lkAH/ogThISO5zVlqq0Yvcnh3h5cUX8nRBg
	 sY/2Os/2wpPYx7EOWtSnlEA6OzHxln11nWfRjN6u6/j94cXeHeUuILV/2yQsKMDzMb
	 Nz7SYSVp8nDfBFgyd4uUR+8GIgEu6YvpAqY1BBQfEoF1qmj1QDspxBkuerCtWxbqui
	 mIM0NwM2Hw0uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE387F5A8CE
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 23:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177672945369.15402.16478792774745617286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4043211e7fdf07028e3889ed7ed52cb2f467ae515e75231aa8fd12b64b61d2a9
Date: Mon, 20 Apr 2026 23:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776729453

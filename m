Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331DB25634
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755405594; cv=none; b=buud2X4BA0d1TZW6j1CuGZ6rR4ho/kGjZ0YG033dSwbFyGtisbz9SHMaXBFGW9ww3MDLR2REgij3PpM/v6eBFCXDI+nqjg2UMPLTUlQgU6rMtoRJHyuC/lymIgDKigi85XKPqWugMTRpZ8Mmi76TDdnSQ5jg69DpnxyIkLxAhX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755405594; c=relaxed/simple;
	bh=xL4HAtMeTySMZWFhb/8u27Z/sHiQIRksa327TJMpyFE=;
	h=To:Subject:From:Message-Id:Date; b=Sro2IqXh0JT4Doz2OH7h5ixAIEh0pazHIWRQGJ4xiN6l9dVuCf+brIxBvyrpA3wDGIWAUKOjecxtEWxiE/2oS3uPzTsDmBbPPh1d91hHX4QCWlQNPcbL0jvsFN4g4++JJt74uI/OFsxiZjUbLlcm+9zo2U+IZHdr2sUg3DrON2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yjj3RR7o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yjj3RR7o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7598C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755405593;
	bh=xL4HAtMeTySMZWFhb/8u27Z/sHiQIRksa327TJMpyFE=;
	h=To:Subject:From:Date:From;
	b=Yjj3RR7oRGOU+p49yOiITeX2H5P2rvF9lbteubIiwDd2c20vvz/mUDP4Dt5H4itEK
	 v+c6tUGrAjjhUs/4LFhJt67/ehsSx50uuHQq12BKdU+rSxdzxOj1QSQl+yXHT4UgdC
	 qCs1jyRjT5YOKPPW2GAeJE405GkoNe5Dt7OLmza2BbqVHFcH2Be1kuPnYqCwTRJ22h
	 tnLisGiVB4F6uk3RaOeDoF01bKyjiUNmBSIQS7HN6w7dE98Bih2HShLfJu/dQb8US/
	 D3ojYflEOI/KpGBDkoeBndmRZ8ydxlp94M4yO0d26gKt/1FXKqegVdkWtBmx8JBsxX
	 odXnuq9ss8RiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B9CCA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175540559357.19541.10503041823653063883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74b22e3c80e3a9a3412ecf3f2b1debd2e346eba4e5dbeb890601c548be23d198
Date: Sun, 17 Aug 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755405593

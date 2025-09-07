Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8C31D6194
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757248794; cv=none; b=Ljrnl7V2x+eZeAxJHTX53Ig+Yh+1ZZhcXgoUBi/c0ok478SoMNYEu9MdtFkc1sBZwa91XATM3TnS3uMTwDrXQtvKJdRnlwtswUm7PFwK+AFTsKYmXUSI/zH142fEDp6jx2BWF4esqYLeTZ31PpLC19Tnqx2A5FdyKdnXnluToFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757248794; c=relaxed/simple;
	bh=c/MFXAsy2+yyL7x80kmEMinsmw9+YOlYbh6FVG0i+PM=;
	h=To:Subject:From:Message-Id:Date; b=DsYwdWIpcRAD2QY7rK0UqXYzcXPwF4pI3IE3/QGT0R9imS/awOe3+y9tIsz2vS3cM2VbgSN8PuLg7myubZbzhphZVqPRPzC7z0xC6uKaRF2o6puBfBj/+wxA1ny0vDYAoGcvznwZq0JE3FCbhlU3A0BRi3ZV39IHGL3JcMwDGOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KOlYhrf1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KOlYhrf1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCCCC4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757248793;
	bh=c/MFXAsy2+yyL7x80kmEMinsmw9+YOlYbh6FVG0i+PM=;
	h=To:Subject:From:Date:From;
	b=KOlYhrf1EEbVYdqMRhg6nw+DK6zkGZ9MlPTGywluZHk8cmE8bbAsfyLuJyb9j0SrK
	 KoaVcF4ebMv+Tyz+rExc0mnDNi4h50+E0vl0pL3MjeQoM/gQ0BcGQ2xYkbOkWPG1Qq
	 /TjB2hxDZunPdU5GxL51Bdyl3ELS7HxZUzLb5f82kMxhZ1wSQXgVJtMZ0AU+KN1kLU
	 g/rmuppnb7atnsutQwJine6Axuo4MBwzGBdHSMdupMW3mIECT3bQuWZjt+FFfEHfcC
	 UbVtm0ozvFOPLtnR+HONfW7geAzrBX/PapWEcqOLlU4GH8OdlSdi1qgQgxW7c69YGL
	 iu5kfbNoGlBwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8D8CA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175724879357.383.8953518941153622054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 632fb9b8bc2bc03155d7defd17051d3e795821fae5b50595c98e4ca380353c5d
Date: Sun, 07 Sep 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757248793

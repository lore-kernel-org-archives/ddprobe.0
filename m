Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48C938460
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761185994; cv=none; b=ZW3Ja/DYb9PQyju5Hpbg0ELsoOShz86Ze7/HBOKT6oSQZbAY8IRJ9u5Q5zbgd5tmY0Dz4hjIWk98ToIlBA5W+4TKQbOABvUFTF6wGUvnOJvdvc9100LCrgQDL8pxwG5UsB3jTviK41Odr+w/2PPOe3cU+CXD77670f6GZ33+HFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761185994; c=relaxed/simple;
	bh=6cXIKjpGeq+lkhZMZlz22X8QnRKqVx93HlbZjy2OQ7Q=;
	h=To:Subject:From:Message-Id:Date; b=HGWvRlQKKuEQc2tTdzxriTiJJHAyZsVUg+JcBbd/gAYWX+1rO5Od5uFUdHkuce1p44B1RpoxR4Jfc8aUpVzvr4fjE0Qfx+OZ++cbjGgiYtc7s5Q4nRRmi/XzPTUESFIRn2Yc+S+4+inkZVY7jh/eWzafdn0YWpCdirjhOLmPYvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OeLMJSLc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OeLMJSLc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77E0C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761185993;
	bh=6cXIKjpGeq+lkhZMZlz22X8QnRKqVx93HlbZjy2OQ7Q=;
	h=To:Subject:From:Date:From;
	b=OeLMJSLcI2oxwv/OxR0Cg1DDWGd/tT5bzM2WcRKbUaOtzY4JeUqHySi3wR5TpTBbI
	 6drn37k3vzWJPSBhes2sIy5mpfyztkiMThAKbJz7JWM/TfvuYU0ROu9OuN4qyOp70k
	 e2Iw+DWKI2koHGCmriuhTocJpgSunoWyo8QUBss2azgdZRaCblP0gdLUzyijwt6GCX
	 5Lmz7Gf86FH5b7uSo47nhWx6P6XBUlt6eOedCUkTDUr6G/btJWWwAJdGWnwR3HvY/d
	 K7qPnM6/a8wCLLn/kNcB+Qpl2IoEwQ1Di9OJXwVgWtZ5R4E6GgzNCr/A/z9QitfZLD
	 CSpgWJj3doTxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92594CCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176118599357.10907.5177965552799693660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68b1425348b96910090dbee4f04b5470efb56243cdbb9ca04e981376855a85fb
Date: Thu, 23 Oct 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761185993

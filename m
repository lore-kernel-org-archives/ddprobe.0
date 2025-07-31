Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BDF91FDA8C
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753978794; cv=none; b=Fkz5m0vCxrgGwUamLeRNxPvKC2RbPebeh+xnmW5LkCscHaKcFZyvo2tJgKeJCLFpcpU8iERg4NYyBW3Huv1SH7jxlQZr7qdhyhhABPT5+Gf/ntywRnYpHbElSu/+u1f+P/SvAMrgDomW+0NGsoOTjSdP3G2s9W+X6cyEvDxSLkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753978794; c=relaxed/simple;
	bh=KbkmOpJ0ZC5gfoN4RvvDW3a5UW5X4RX/QJ1dMi5eD8o=;
	h=To:Subject:From:Message-Id:Date; b=M/yvPGtGQOX8kpZ8JkDKPtH1PdYvtsDsUiUX8EDIgwvZnEg0S5h4x3LkvUyZCLi7Y4IzwL7viEUu7zuJ+wGHgVtJ18OaSJlUPwfCoT0tEJ+6naSsNP3Xmn2V3uXeF9Or34zPr7Oq6O3lmaYB0nUhQNil7z6GCYr80vWAmc8p0dQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QRUphYzH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QRUphYzH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3609C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753978793;
	bh=KbkmOpJ0ZC5gfoN4RvvDW3a5UW5X4RX/QJ1dMi5eD8o=;
	h=To:Subject:From:Date:From;
	b=QRUphYzHl6Y/xmMk5lZ2+YY8v32jz8aNgbWtpuYyt4AEOkLOvYzNeRE6sCAdanigD
	 XSeQrYUtzatVHUFUWdh2E3XoQoLT6TiFkljX5upobJzQN5p0CZJObMSTtJyG8Lr0aY
	 6W3FR84VriYKtpqHtb0tgodjUOm10IbkCOVzsrvfwHUZG6kbyE5ZPIVVTk8pSX1Syy
	 qXzDiheQmYTUflj3tnjZ8rk+UXg/E3Qkjo/uWMynjmW2sRFY/znD0Q+a9DYKXDeM6G
	 +idqeU+HPSgofG6XkQRKDcv17rofA1h02k2BwwdKhI3PcMWK5Lnu7QESoIG425yqmp
	 dvxdRYDNPopdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90396C87FCC
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175397879358.1991.6596695892354907129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 976ec11a29131ce72941540e55a96b85dc7f36457a98107c40a329f170919fb4
Date: Thu, 31 Jul 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753978793

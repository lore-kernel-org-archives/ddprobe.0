Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7D979D1
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 01:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C5pCt/WP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85F5EC433C7
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 01:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700531296;
	bh=xdRNSkrOeJxslqVhbFkYxN8V2ZdsfgNSLYxM7w88LJU=;
	h=To:Subject:From:Date:From;
	b=C5pCt/WPBs3NWMudZ5HwkepinbZjbaUOVPGJD2M9m5gnUy8hYVjqSRkc0RUlrtecn
	 6IYECbIXnl7IdxEQUvEDT4vEIFr5pcVGq5iRelITnPpHMHGKovPgCNdrcghgJBGE3Y
	 VloSS+hDQopicJlnzlDqXGi2i15HwvgLcKPqybfYocOUG3wluEt5ALWSJQciAZ8HBV
	 jk+C5AokoRwo7ISjYdSclBxF4Ww+lf45eq9BE/QjA3l9VTJO1e+vOVqUX75Qy1bHN0
	 VekKjeqGoShuxsrZLSazmtNsDTaDHo0tGvww9RUwHYd03bVzSMF3FFpd4mE2zodF5k
	 EP8sotLbN1/+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68A0FC61D88
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 01:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170053129639.28749.18140468953840073124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be40d79af0959550b409c74db5fabf3d8e9b5ff5f181667158ae963e85ca21bd
Date: Tue, 21 Nov 2023 01:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700531296

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0ED1841
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 03:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cps2hhBh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 876F8C433C7
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 03:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699587496;
	bh=4plLWn244Sm09TuNbeQOqBdttBB0gQy9xe6/YpSRjbE=;
	h=To:Subject:From:Date:From;
	b=cps2hhBhfLlj9ZYkjR0EOE8eUF8F59ymynq575UHVf66WsbnpoBpP+7IMT6EW/5bX
	 zOE5E26yWXvk10TDJzvEcx5jw62Szm40w0MtAz3ip9Q4X+2wivGZZI5mtxPKXsuoTW
	 B0Fcd5pQb6FnmertpJY/6ykD9/pUP3l6s/cshHJcMS9o1byv6IC0G36viPx8Du9oay
	 YtU2Dd/Y6/wycjsi3lgX8GRcQcHwqkr3hmOL2SELC7cL+K2LUS9H/reJ/Z9HokOuWq
	 GnRxkbBysWih7XlbtbLb/kmDoKcXb6vW6cqiUZasiFo+Pvdanu2q2dKt1xATepzl4e
	 fG2ZE+LkBu+Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CC74C4167D
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 03:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169958749643.11330.17375647348785262143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c03939bb3a5ab1ff39f120f7229218c259b158587eac898c908023d5871c9932
Date: Fri, 10 Nov 2023 03:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699587496

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72AF62C181
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 06:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782281794; cv=none; b=YjKGY5Bo1XQXart2Lhk43H54jU9T3FgPJl+Y1klPvaONpDky5udnJYUzK5foAfHksgRKUO1VzL2iDfqUs1U5u09wIypDcJIn8aNHp3EqeseLFhQTYi2oa1LWWkm8PHDyQT4P2XzzCuvlTxG1rXM521DwJIMvC8JfWMo2uwqu1qE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782281794; c=relaxed/simple;
	bh=bCHx+BqFDvJQRxa7TIsYsZepzKAWiJr5xxWSmhbdOnk=;
	h=To:Subject:From:Message-Id:Date; b=gnDjiO4s0z/yK2gaLQ5n6X8GxzycMJOLJFSsUoA80LOGsIxqNGKdgaKZo9Q7oi5101vu/ShMBAPWUfYJ7scWlxzFaPzVWHiLsBq1v2soq7Y4Yyyr3Y/nE9hgkNsGRypLdgr0A4JOHSKcvMN0KSbExL7ePQP5kyn0XeGQPr9n4hE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b6qz7jUq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b6qz7jUq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC033C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 06:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782281794;
	bh=bCHx+BqFDvJQRxa7TIsYsZepzKAWiJr5xxWSmhbdOnk=;
	h=To:Subject:From:Date:From;
	b=b6qz7jUq7ZOGyrfalGj1XH2U8RN6jAmtSx0Z32mxg8WrMPUkdXHKyH/au4VsLKw9v
	 3wK5pJM6LJvAkQzNwGilTWgi3Zv7pFsa6UQB1VElKqWowMYM+xFFzUWPpOHlvc2HP8
	 ZSx3needSGYYYJi89YNcrhqGIRaXts8dWxVhDK9P3e9UyB0q/tcQAeMCyVSTC4YeUM
	 qGrhtKDTIrZU6tLT/2WawjAoVevRswM3jFy5u9gX8P0HZ7qMfPOASMj4RS6L4jgqUn
	 GHIDhiNbsmPeKF8Xy9Ax/VyyGCRHI9/SAOR5ubphIoqt2gaVeGkxlr3HdEA5Z3JghV
	 YbisXMoNF/2Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD5E1CDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 06:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178228179375.5566.1375924283019846948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e7ed11efa9294c52cdc4737d3168a409afb9e708d29d54fa75b6dc8696f3e28
Date: Wed, 24 Jun 2026 06:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782281793

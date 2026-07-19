Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8EF3612E2
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 06:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784444314; cv=none; b=tQ9ouNcEjAGYY+g2DjcBjcbhL7hzsan6qtvD6RP+MOAmN9Dy3YxJF9ygkNFR32um8iIJMP4nioVB3x3R0EgqbDzlGfYoYpC3S/YqD4L+z+jfFmYX2bGjveM81OUeFM7BpC2N57sNpRLW5KpqdC14PPU48K9PEwkxUJnP/xQe4LU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784444314; c=relaxed/simple;
	bh=VfNoVuYk4yWGL4ByapBhR5MBeSDY29EjisJezR+Sas4=;
	h=To:Subject:From:Message-Id:Date; b=VnHdgqjt82urs0zlHWCNLfgL2dRYrHA7YDAmk74fEL38tTPCJR6czzFiPAHq5FzA1lbzXSlRpARYIHSN9+YhpFlnI0itlq1nzXL3smJwolF7i9cFx7v3w3vuekBPMiN8aKFMLjJSj7lAublc7ahlSe7B+h/kW3fMAr74uMkyQc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c3VNY3/h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c3VNY3/h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4468C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 06:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784444313;
	bh=VfNoVuYk4yWGL4ByapBhR5MBeSDY29EjisJezR+Sas4=;
	h=To:Subject:From:Date:From;
	b=c3VNY3/hqvQZgjZdq6B3PGuHWE7PKqdu9OBG5HE2l5y1NJcpOIX7gOdfVpCT5W4UH
	 XePVztUElhjYiqhi9ivIRFQCfKmnPiZHTKYsPeK8S3d7jI43D+6/SrYWat6XVB3LZG
	 pz+UnmWRO5CXVTrfU7k2s+j5SYDRJs/iJdO/sIlA8IDym2Ej9T8eAVW+3L9czyZdD4
	 XPN4GZnJ2/DtYhJf2ay40ru0cFTsHvkmPEIb5cMGTQjrd8WR/rdEoo/Mdq4hjhwc86
	 7CqYDGQvIrEbXJj++z4UnnOBJ6YGTj9Ifzz9yYUqAb7SLr6Uh3UaxQ6+NskmeT33pQ
	 V4zcykehaoNng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE875C4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 06:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178444431368.30924.17591821981448495302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eee9444d3fc068b939b912e50e1ddfeec799c4baac78eba3245c3251e1450005
Date: Sun, 19 Jul 2026 06:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784444313

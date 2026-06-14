Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83ECE38B12C
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 08:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781427394; cv=none; b=dt97ASTOWXuA6Y02fdl3elv3oMw7Fa0eD6/mT8A1rfzRuf+ly0pOH35f1U+bwAHmlYSfuDELHLIo4ER+3VNxWgCOJB8xl4AdmsMlEM5CzIS5u/JgiY7fg6TjOdanzKeCHWWP0KLkkCiqkwZJP4tXOlvPnwisj4i8x5MyX3d3dc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781427394; c=relaxed/simple;
	bh=k0EY3ZFt6UaM0YUd4NHjqNz8eLsKqs8f8k+7fNOnZHc=;
	h=To:Subject:From:Message-Id:Date; b=OMQ6VXY+QP1+B0m5U7RPfS5qPFxJMyG/DL6odhmgh9KC9E7WMAUWLydPaSplO1pCzuLpGP6gKobfH3JcYsxADIwolERl96oVpYPdtpdeLk2n15mGqmw9UVK1m3D0ThB+W/jrUq/QZMFYJeXkCbYylCOr3boEvMB4giRtl9bMkCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h47wW+zn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h47wW+zn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D63EAC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 08:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781427393;
	bh=k0EY3ZFt6UaM0YUd4NHjqNz8eLsKqs8f8k+7fNOnZHc=;
	h=To:Subject:From:Date:From;
	b=h47wW+znEi17WrT8za+Y15CAYh4UuGWV1sPg983VcK5ByhU/wRAmTbJBCE6/sA5z8
	 oZ2Vu8FZnY+xi2zF+VX9RrwGgl0WtqEwTpLISe/7peKifSXs3ao5FsClLNnsIbLvwp
	 AcU67jiEWuC6H2H5OE9ZwnxneqCwwPwRIW1g1ftq2fBAjfpd7Z+LWlyftAEV/rM6Ce
	 +Zpsh6dXe0pMtg54/LqQxHEJYach44pVP9/dRU8aqMUeQHxyAsxDqM68/viAdRQ/sY
	 UdWJWzl2I/+3DYk2ll/KiUPc9yEmwHInqmAbzW/bT3PI1G5d9q5Yva7REBi5xSP/Ba
	 vp3Vtnl/Hzrzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC4E2CD98D2
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 08:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178142739373.12863.5257970254248716281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ef5b131e2ae7cd862baff8cdae719b0658ae918b628fae2897f67ae12c586f3
Date: Sun, 14 Jun 2026 08:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781427393

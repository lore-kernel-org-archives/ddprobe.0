Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A02A42E007
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 16:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772209494; cv=none; b=HJw4Iy4/S/6vNZo67N9GcawfmWnEpT8vgavga20aVJLCCenpqSAaHnV0KMrFuYtTKRcBqlJE2c5Xbe9LmiIFgyhf8ZF6kbfrQQwFSTjReFuT+lZ4PgaHIiC4KPQiQM07kqTann/rlYNxyeVAoKsYtTkTDtThCwluoSHAWS2P7GM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772209494; c=relaxed/simple;
	bh=76SIQpT4ffbGV8NUFBPe9zZEQrvD1XMiW/P85xXuvtU=;
	h=To:Subject:From:Message-Id:Date; b=Xsk5txSj+4cW10EyTfEbxUSy/bfYZjxsrTyZKJMx9GjDeNC7+z/Y6EQO+WV/jz2+GICviyGoEWK9irNUX7ZDRPiAP3Vzdk35BO5C2JNCSXbe2oNFWDDYtUHMFMltyl+emRdU2Xrzxh4T15saWFxpZOI197ZghvQqV/ZauXVZBtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RJdJaDe9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RJdJaDe9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45C0C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 16:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772209493;
	bh=76SIQpT4ffbGV8NUFBPe9zZEQrvD1XMiW/P85xXuvtU=;
	h=To:Subject:From:Date:From;
	b=RJdJaDe9xdJnm4xWjOd5DXmVBsuwOZ/lfv+0xORpx0FGCoE1q/7gjYGBSsOsqSE9+
	 uvQQAcOi0JAE898MM9U4AjC893dGtH5Ut7Gnv/Z9ZP1f5cz+Fufy9MKiYxQ8aT2d90
	 At2vl7DJYRwK3mbQU+yghS2fW22g0un067cgx5IlubP6ia+JyY2oONTccMjr2O5Wm1
	 6VeDdwvKaThb0QN2wESGjwSJSoNt6YubQjnnYozu5XNFQ6aatiyznyk1QK4U3m+yua
	 oHaXxELqtXitvErpG9+3dLzLzqi0hyPr9uGVbkYqFGpmh3JI7O5n4Shj4+IfYN1DxS
	 2VYpKr91HqR6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F92FFEFB6E
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 16:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177220949358.31102.8807058509355720555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ce54fa9ba1f15bf133ae6220897043af44ce8e6654c784e005c9d75f07a890c
Date: Fri, 27 Feb 2026 16:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772209493

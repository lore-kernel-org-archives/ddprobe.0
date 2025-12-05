Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9F5307486
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 17:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764955974; cv=none; b=K8GolF0nAfDVHEw3uTlihpTAA0QCRE5P0IFq/sdY3TSyzvYrOQeAKddGyZpYVmEttzuVDDGg6UjPu7mavDd06imZFTtxyRNtjRnQAsrxVWj7KmtLX6jwkDvlFrg1atSlOLb18H/Pl9aTow+ZwSVjhslcgH4SwWm5d+ARegZOUVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764955974; c=relaxed/simple;
	bh=T3AuK1Poy7my9lVng7eBbC4lAKJNT9DfJave2dYUspQ=;
	h=To:Subject:From:Message-Id:Date; b=APZFosd34Wagip+TxKQPH0Vbr2OFmygSAZTxzRwBJmiNdAghA2cG53SxRCoEomf90R2NFqlMPRc4TAr6PgI7hNMd7w9mThhbzHNK3aX+EhPP3oH0Pl3Duu26NG0qDZj3tIwV3Q32j+MP+WPrW/V41OLRBg3Zmpw5LpxH0a50QFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UKPES0Qx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UKPES0Qx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7B52C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 17:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764955973;
	bh=T3AuK1Poy7my9lVng7eBbC4lAKJNT9DfJave2dYUspQ=;
	h=To:Subject:From:Date:From;
	b=UKPES0QxJLa+kZg5qRyE50KbvSY1p83fL5Jk1itPLMpEDm1cWyh68L6U1kfspGrsd
	 qKBBLj3VU/Ax+g4PAGVdtcjsWdY8Cc2H48XK/LJ/4na5z5G/ldi9Tazv6qXDfIjpML
	 rnKilzkdGCbZee97+M6UTAqabWIEqN1zzbe7WXhGjvnrfyglzDTcWjYZZDn1IUrPUh
	 yjiTETAlekg190uEDDJXCcMal+8UmWYt8gkj0yj/9qZVFAysaf90nEwP/K4VwrbDmI
	 KxCf6VqtdnSWnYXsAkFMpt/QoYiU/dSjbnWgy5cOAoPGEx6YEK/a4JfNQKGbngFqrm
	 JyjZfEPYekrgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2CC1D339A6
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 17:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176495597365.14777.9225511789126124186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a08e539ef2bac9b0be046ed934740552f6d211f32b815443a0c3163165273295
Date: Fri, 05 Dec 2025 17:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764955973

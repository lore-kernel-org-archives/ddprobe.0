Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3038927A92D
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 01:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776563854; cv=none; b=Pi0AQBM1vUfCGDOtTfOInHtIVM2QYiI7GX2NZnsymfjYPYyfCJ+1x6dJxHP3e5EF77cEgySV7t1+s6sthM41z/Gz2FQV9ZxJVzzpcVbdtSXB/kcEtX0kpZO99syIeaHb6/nTgXbrlI7fTVJbrRe/kJUf0icpVrLE5ZRnmYOaga0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776563854; c=relaxed/simple;
	bh=yhOH/nXMyXG8UoUBCaLXM80bEN2uxoIGRtGkokgaaqA=;
	h=To:Subject:From:Message-Id:Date; b=EiO2S9PhgHPxBzXSvOSdzvO/4CiLJK+NRU3iT4xEy00GdCBpM5EAwVrI+8Z69Ri06bl5Scc0v55iHf3aWWcD6W8qbXszGG1MXuzaLCfV9KMKKPPfj9ES46Ay0o3hJyy81KBfq1vVr5TQM+13hM9KBmQBOcq9todMKu+AV4Fj9bM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xfg50nFh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xfg50nFh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2D5DC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 01:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776563853;
	bh=yhOH/nXMyXG8UoUBCaLXM80bEN2uxoIGRtGkokgaaqA=;
	h=To:Subject:From:Date:From;
	b=Xfg50nFh/sUaCKeEyrZOD8/lSwkzr2rt+0a06fFxZ6cHEL7QesfyyaoNH0w0KJ48N
	 LKFSN3QQQz8wrdZywkFcC9JoI5eCXUmMtY61yYKthIx5qBjr8bH4a9Mnh4uxUh2e3j
	 3303SpzAm8Lmql7ScXAVadQmasPtYXntv2LOi2u6FaRwv9nlGsh5lUpvYisaRuV2Yv
	 0ZTEvivyD6Dogtz22C0Ot0Rp/f10CpYtEebcrn95XGxFjCRJAfU0TOYl8D7YvL2NoG
	 je3rKXMrHlf93WYdytzr17Or0BsAMTCMk4B/S1dqdjqTojMhxUmPrH9S099mZQGIv9
	 q2zKVp5YEUQ0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B34F99C98
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 01:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177656385368.16418.13786815724053938383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01885adbb9d5c41ec7ec261de21d01149b23148b0f3f4c5696e201618880ebc2
Date: Sun, 19 Apr 2026 01:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776563853

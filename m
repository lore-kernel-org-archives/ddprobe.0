Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F19E30F7E3
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768962234; cv=none; b=kdXAngMNG5JQjlJCnb1/sFhTqgbUusZBr+FaBzh2I38OWu98B0UMl6tJip5Wt6eUiy83f3odQuPa8ScZUOd+C9UYOj0BtH5WplPWcQ2PyVgfvE9F2GM3YY2/wb44QxDGY7qTCTclqG/M+JXK3L1Izo+pzeF5bE6GQ71vWSBP/go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768962234; c=relaxed/simple;
	bh=IfN9/oiPSYc8MUSBry9Jiv9kDRLYL+l6FKQBCN27fNI=;
	h=To:Subject:From:Message-Id:Date; b=T7gz1ZUyvYuYd24Qq2X47T7VfrWc73C12ew4ZHyhQq7UUdYZZvGpLCoUwv1hHHUfcX0lJT9oGNCk79f/M5FbNOP2+B5CEj6uq7e/4/9Tvh3XbYPeE9fimhGP3C54BHDyUPrbpVT4u3xZX8V8SZxcCUoLLCC9bY4DLookNfkccng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sFsvbLhh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sFsvbLhh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3048C19424
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768962233;
	bh=IfN9/oiPSYc8MUSBry9Jiv9kDRLYL+l6FKQBCN27fNI=;
	h=To:Subject:From:Date:From;
	b=sFsvbLhhfloNBHMU5W7e5HuK1p3g9chm26IiGdH94h7glBe4gqY7MNIbI1gbJfFEG
	 GnhTYJ7vT/9cq9eHqQ1fi+DBdjne9RMEOt/cXAq19eQXB6hTbZg4jYFbDXmWpm2lpC
	 yRi9+YFBSpvdL1yB/ls0KJUtcRaikz9EaafI/2CFCQ8s1pfqib4/uhdgDR7N5XiQGX
	 lSp4pm+8JsKbMEbW4XSr4zcJzKC1kNPpmxP4HtqgbOxwx2dcu/BQZkscsQ6Ina5wXi
	 f+OX31pOgHcniIykNG2Rt8dr9LjOfXZEsyS8eLiOxe2JlsnXvPtGxs1Uub20E7sTas
	 CXkZkSOr/0MUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4279D262AD
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176896223363.2405.13631794745064964143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9c522c65000462ba1dced716cc62bf8d786ce68b5578b1789b250660c63ef9c
Date: Wed, 21 Jan 2026 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768962233

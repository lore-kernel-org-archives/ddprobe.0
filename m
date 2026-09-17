Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDD723905EB
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789642834; cv=none; b=pLLDrU1dJqxtd8GE/Nfn9exGYZKmdqVkLx5D0wGlcqtDFaVFLiRNLxgDHc9Q85WeIHvS52vczaz5zLB9MBJNiu3uMrPCKJfJiS6T1FO/qLsPVj4V0YIDA6XdWbMyzXcwDReoMKnZnLss0MKKP75EkWy9U9w80TEeEEAHT4+HIYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789642834; c=relaxed/simple;
	bh=r0ilnmJOj3adAunK5cFeKb5l4/adyuG6wwgPNqmNP2Q=;
	h=To:Subject:From:Message-Id:Date; b=j7h53LDfXPRcO06N7V80DylFHn2NO2UpTJCg20cPVV1oFAJ0od1rDMyIUcwK0RfKR8GKh/GOoLJ18dUPhcDQG9K5fqeK02/rMy/n4RFINP2KLMXw0JFHzcZOrfKx28bJuOIlNLxPgO8+b3ZCxefWYyuDzbOAszSnWKqsE3/PLaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f9qTkbs5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f9qTkbs5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3877C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789642833;
	bh=r0ilnmJOj3adAunK5cFeKb5l4/adyuG6wwgPNqmNP2Q=;
	h=To:Subject:From:Date:From;
	b=f9qTkbs58ASusdjbe2KPWax9WrAubmTjVnwUYVYJ0wqlYG+X1y/6pbXzLyU5iX0bq
	 ylVjd05V4sP9tEcKncCUySij7er/XaCDaO/0zGQadPR26JSFTVf7StTuPQA7tqUAO6
	 Hdljk3O7fwDb/ipAh7pjfAktyLYroYLkUi/EngrEsnli+Cs42nrD9UlAMeuNEyeYme
	 Sg3Ei+NLOMTUt6tXOICC6U6Yx3F1D/w/4KpcUIAaJWNNjdNQB9lIkMq/uBNla7HQmI
	 xVQPEiNBC3QejK8dpHOn2UZMoBbLQuPskDfYYJGnQWoyyiPEuPCH2OgQj/5L6EzBbD
	 kqQdrAOjQVKCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADEEAC88E72
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178964283370.11553.13504499705783387721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b97c4983161d50c4d82a07e1b5451513cd64ae56cc79dafa921fdb250fdb7201
Date: Thu, 17 Sep 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789642833

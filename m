Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A127EEB1
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742383794; cv=none; b=SU+Gz+drA4sCWZpfPRVvOapmhR5mdb7qNUXIYp44tBoj5uLLc6EK9h/i8av9IbBTOj6JUaVmwhc5/x7eL3k25m6Ha/2UNTsgmWTERAR4jjtIA9dtMLsXe3TedymnnOUSNRMnbd1bumhOd41ozIbSsmr2VEJHuwxTPrTE6Xk+YOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742383794; c=relaxed/simple;
	bh=LZHBW1s6GIp8h7PL0X9S/cuiVGJZi1qXnpAuEria+w4=;
	h=To:Subject:From:Message-Id:Date; b=XrBWZnatarfQCWEDu3EtuOxARwx7WRuFP5+ENCTwKvzTTr1KjcYI8aVocnTDwm3ZyXDn269vRLSstNLaaDJPKgcAjMvJ4Ev3vqbj2DCaIBVK3FHlzUTJhGd/9dkfOarm7l9fK4BNACREWQorZBgDiCq6355GhlZlL7M8aWVdBh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pIbjOKug; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pIbjOKug"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3287C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742383793;
	bh=LZHBW1s6GIp8h7PL0X9S/cuiVGJZi1qXnpAuEria+w4=;
	h=To:Subject:From:Date:From;
	b=pIbjOKugNLIwV+FmNhZtQtHJp0D7YiRxXpVpgxQzLDEytC8Y8p7EFseaKRepzjy47
	 DoCWoEaBeuyCwgk2+iOckpCG0fYz1wxgyWx9T6a9PKHwrr7lP9bD1vX+L/+KG6uvO0
	 GYkOPWc0ufXWSvNvhOksmaHRjygalEQeM4pwXF8bRZjRoY/RHJvbXa+fYeE6iIxtnL
	 Pvj5OGy09Byh7Su2Z+rgzCjyG2oDRnyw/jG1nWsoPVlfYNne+DuhR6vTQVUxdVLDYb
	 gVC5YZQNlFSUOA7DTBI3OcVEBzkDpPT6c9qxiJbmi/sKI3a8J9rMx2qNptajt2o3XD
	 et3OBEcGYjkfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B8D9C35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174238379362.7578.1220473095135828079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12f9ffbcd1068ed56fc573f54000da645837fe7677c5efde7bcb15133efe77ca
Date: Wed, 19 Mar 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742383793

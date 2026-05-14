Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E613F3DB641
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 12:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778762434; cv=none; b=BrHWXq+WZdtWA9T4jj+PeIJGk0OZXFUXeEk5d7cy8K6B7+arGSEfIjPb7TioQbxmLB4/kqoxvglhQq5KiS09qQu8d+pCsE4K9c3tnt4np3JDOZGYatg8jFJPcNv2mafxNOxTN+GJ2722eLDYHxVsUaWPK/PhKgMWrBD1NO+FTZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778762434; c=relaxed/simple;
	bh=eXHLfI0XLGVBp/e5EYMW2qZm6ZXCU5QkXDmBLvi1FxU=;
	h=To:Subject:From:Message-Id:Date; b=pcULfUdclI18kyO/lAfmNcx2uwXEqnW0o8y3O3YctLQn6FNAEFM8NIuTSwyLJgCVyqT58wOumz2fzMkshPfP8U3NCnpkAj6hUJZ/NwwnakmJR2GeZ2Djqlym8GrNazsMcbTDYi6cUirW6IypeQIq6/qi3Buqu9sIe8fWcVb5QoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tDDYz5Qd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tDDYz5Qd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0A3BC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778762433;
	bh=eXHLfI0XLGVBp/e5EYMW2qZm6ZXCU5QkXDmBLvi1FxU=;
	h=To:Subject:From:Date:From;
	b=tDDYz5QddaFiBhDkNaMwfN4V9uvOdL4iPA5Zlrz689kVKlSLiKsnzUGBFnYMmAoPL
	 a/cdfFozrD7anImu2zvK66PPd+DkD86DF3uHe3x4ytKReDduAWpxvDxAydiEk3P2Yb
	 gOjgoojGrgpEcWKOmmjQ8DnlfXO2QwMq0RBGoA/+0JA9OLU4NIfDtpWfGvU86ccqw2
	 A3WLO7x4L90XYN703IdxSa3vvvDTPavKzNyMLETexaMgqfifh5ZKgAGTNCCPbTrUTx
	 me112uGhRceKOmJf0tRaB9QFriKuy/oK+o9aVTddPBFM8ou/WOGBd6cHXYCx8wvxnS
	 mu58AGq9O/QrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1071CD4851
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177876243369.26545.7016082113624771964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b534ffb157eacebc499a8f9731d68c0ed16e56159675646c55f7672b438c694
Date: Thu, 14 May 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778762433

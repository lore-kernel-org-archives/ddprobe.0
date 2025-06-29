Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8B319DF7D
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751200794; cv=none; b=k41eOw/TOYZY+sQJj0eyaT6AyD3v8oxXcRNYOXulf9cA/maEKgDklW4PRNfwBNLdXSA1fR2C/R+FW3DmRqS6kWg/V4Lq/WpR3jOJO3tesDO7JYE8w64L/ujgyyPLbPEWiUHI0+QaeXiPPvuKDQSVigjVNUruFX6DmKCztk2hNbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751200794; c=relaxed/simple;
	bh=YI3aWyW8q1WHKqP/dW6eWW81BNSVrQyQxwOyUfNHW1Q=;
	h=To:Subject:From:Message-Id:Date; b=MZYh2svTfqyS/AiN95AJKew2X1Q+ZXSsx7kb0HIU9n3ERonHYz2+Df4q/znnB/PwzmWzF+KXRhG3UE36AtRN7oQ60Xm55HdQNacI2idUhtffB69tTHANjXWmSCUCLGn1EpcZDjMjf1cNdf4DmJR0ClXGalC/gUchj7kawEYoALs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VIAh+lRq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VIAh+lRq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69D0C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751200793;
	bh=YI3aWyW8q1WHKqP/dW6eWW81BNSVrQyQxwOyUfNHW1Q=;
	h=To:Subject:From:Date:From;
	b=VIAh+lRqjOlQpS/yq1rWIii7JZV4F/oQypU9INAWjxqKaVtoxzLm5ghPafMmuxI3t
	 Pkj1KjgqlZPUM73gdRJ4sd//cRDhlI0nfAALf6+m5Ud1DPUWfOcPJeK2G54godbm7m
	 0reXOeuwQrA1IXFkGEoxLq/vdg7nypAJh8CCSk72jmHTRnp1Omk/zl5tZNrHDaSOyN
	 2J85nd15pXy7rT09WN3/o9/MNVfi2IT6N387w7jJEfdS2N/kiq1Tr51jF92f+SF+Jd
	 RpqFDMZvr5hW62tFf0Oge5zGSesiyk3THZGqjMAcX6Y5unB76r3S/HyfN+Fv4v0llQ
	 GVaMx/n4s70JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916FEC7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175120079357.23386.15035219093094110456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80e78d319a72759c31148314bea58939ee24cef1a1528affb5f92296fdd46073
Date: Sun, 29 Jun 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751200793

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D8415E5BB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766300634; cv=none; b=VRSk6dLD9PupPNapk9SDHCqrL8xjcYVs/RqDeKSzDw+nxJEVo7Tu2J0tyotn6HepEpXfL4i2SPRFacUTGTC2Yt434DTl7MG4PQfUh8l3woNH1CDiIscdaNlXUbLku1eJNY6bHyrfyQmDnRTsr0hsOQuE9WHEkSp7aRutSu6l+Pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766300634; c=relaxed/simple;
	bh=ZF0FBClTFqJDLh0Kf9dVcvf/QVTO/A26JMq3oI6yulU=;
	h=To:Subject:From:Message-Id:Date; b=TVkSEtUjR6omvhgnF/fT08z+ZqHmUyBfy+sKtj7f7nfIuMCsUDTTXvG8fUBfP75XGHbejqk8oJt6Rz7btnGKFsN4tPpX675TxiJcvU1DShvVf2MC1msKoWpL4HTP+v5Kq0HaIJa6TWOGR/lGCHy432/TEL8OdLbfJvrzi/UbuOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ookOJdxN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ookOJdxN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6ECAC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766300633;
	bh=ZF0FBClTFqJDLh0Kf9dVcvf/QVTO/A26JMq3oI6yulU=;
	h=To:Subject:From:Date:From;
	b=ookOJdxN1EBlO6WIWkIfu9Ueh++7HYBIFkUqXvQvZKLRCAI5ENJnayWvWR4RJpP+G
	 2EuTgR1yWzEclloeIolwJ+6ySaR0YkgEELv8hNhy9rDj3oTAP4y5lZeKX4/+kthjat
	 lEtzH4p3z4RwM0m34USz4zd4ckLRcD+oICEGU1N3I87GOXAxJaIx9q5j814bnUGViJ
	 m+BMXvmRUA/vlotcUFUeb3tdQP+dJ9shrcPT/BrmC1XfMoDjN0MPrS3f7oQ5zOtPWI
	 r9Gr5owNymkRV2AwiCWdYTD+a/5DyvwOAvIBnRAMMbe63En9l9eoI1eSz6xpigCdRN
	 LvFy7xHp66Flw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9562AE66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176630063357.14724.16057202540651689366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c508e6224d66cdc1ec64767f1d6b604e6914eef254312295f90d048d13bbddc8
Date: Sun, 21 Dec 2025 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766300633

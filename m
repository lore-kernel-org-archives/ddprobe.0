Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2115561FF2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750388394; cv=none; b=Khi1x9D5wQFib/KArc9vQ6R8VgTJAucj247oJWgT0Uhml9dLamsN8UD8LP/wI6alZ9TSPtqUHiJJyqQn66sdH28nZqYgWyMjdvkW1kHr016+y97D182dfxoDKWSGgFtObzdnaO/clu52IKKTMJwXqI+XSLmOQVKVu3Zv8OedDnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750388394; c=relaxed/simple;
	bh=dXO8k1PK20CyWclkLWllITotErLMfH3o3/E5MUMZk/Q=;
	h=To:Subject:From:Message-Id:Date; b=ALXe6cHcdEdMMDYczaO3TdN+eW22GNWFPtn6EyzA5gYrfOas+Liw6jjTdyxeKn3szuJqDGGmHpxg8kDdkCvRVda3ZakHzNUJdMM06gWm1jq/+zN1XJuVuQDENhlkDCc6cpPKmSxUIOx0c+kkjp2nxQEtx+dAP1gY4/CpV6BTHDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Azxs6J2D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Azxs6J2D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F5AC4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750388393;
	bh=dXO8k1PK20CyWclkLWllITotErLMfH3o3/E5MUMZk/Q=;
	h=To:Subject:From:Date:From;
	b=Azxs6J2DM7OONE87c+GUimQk71tTxwCpqf+D3TJB5FZpI3NiRVUWnqrOphZtjwacg
	 w6y+HgDmppQwP5uMpVkwNIx6tL1e1O9+FFlD+WlgMwD2sDtJNfR41+uP0RJmzSht37
	 kFBj8+rtF910NyRdQMy+RnktT5QtI1HgkvK9HCKrSU5wtjXnS8ricwiANV7GJ1rolT
	 RljBMlNMD6APE1lpqhf8w8/HwDL/oVbVDMRYovsbEQLUI1OzRq69eFfcma7R3hRCYh
	 p0eUTcK532/7s2OHWa1hCMnshjXtlqIbFN2nTOW73ouggQPfhqrd+uN1q7koUc1zpg
	 JjKxTLD3MhVFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923CFC7115B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175038839357.21562.10688830165837640657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 815a199703de581f1f335e8778825e638cbce3291207f97e99fb204d24ef8ae1
Date: Fri, 20 Jun 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750388393

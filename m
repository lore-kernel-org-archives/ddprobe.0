Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45670632
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734839754; cv=none; b=MvGH3BBSCoBv8pBFi5+0m7YmaG0fZE1fvRDWUADYoW676LhMrtYN6IXa3FpDnw9gZLLJQn/7LiI6VpMnWzHicC0ZqQ4QLue+GAT5R/NenRm9Tb6YqRAhdhihU8rAeInSVaZx1CC7Pz5SN7oVIzp7qb4TXtH+KWfxAEjUeGt76SM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734839754; c=relaxed/simple;
	bh=Ks37bvMEa+cwNybiZoOzyM5hUYptro3tocDBoI1Id4o=;
	h=To:Subject:From:Message-Id:Date; b=cjSVS6IXM37yjRC79JMOcfisIrFYpXJ2Fh6aEPwkzsl4Bb3kXuQ5ALBzH/5u8UxrWbCdnAbE8Eibni0VMaVAIuqNG3w3g2IXEXHP7xUnB1c+i8lGNF5Ua4kvbATbxnwK2+IEARaV4eiuFYFeURvPZZUPPmFe3x0Z4DrB6+JqGBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cz4jTGMW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cz4jTGMW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF48CC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734839753;
	bh=Ks37bvMEa+cwNybiZoOzyM5hUYptro3tocDBoI1Id4o=;
	h=To:Subject:From:Date:From;
	b=Cz4jTGMWoOvUVXEk4V865vgrwrMyKrpwT3R2i5eOVaWTPNBqT2GtHAlcTrYRq8cVi
	 RE3mQyz6IRDG0YsMJFrMJMYtc5dzVgUxzsU+iAsc0/dpbBVoI9flncNmf/CShC+QIW
	 w8vFfzlz+o64WAi7Wbl2sfvL69nuhl0E0AoZj7scqBNUyycc81dUBhWwIqHrorQ2CY
	 gYVoBfXBxODGrN3JyrIR0ue13m7/aiW7Z31GlKH92H/s2hz6848VZZd0PcpElHO1xN
	 G8SF30ejONZOcUlgPZ8DuDPU0PH2TJXbncv2jViZQRirXcLNTIAOeALuBkbqpN0hHu
	 DVDkBbqT8z7Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99DE8E77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173483975358.6623.3864228298124659568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6acc7e2b83205d374bcc9e008679e78fd393d6d51cc5d692456014027987c3ee
Date: Sun, 22 Dec 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734839753

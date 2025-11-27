Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323FE315D25
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 14:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764253974; cv=none; b=tdxQoLviH4s4M2DmIakcXXFXSrDKE3YKCQ3HtKLRnrMV6VoqTmNCC1UEsZpxdiF3yiHywPNctLRqbS2BCTWU/67dinT+zp72Xh4SKJcRmUlNWolzpum/dE0N0xc2SmVlEUo1j9SVRncP6IBYZw6uqjLhs0Mg1++aHBOwOplsXHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764253974; c=relaxed/simple;
	bh=zF8uaOT543bm3yZ7bz5zJ81DD3p1MqnKf8XLLL1QtHM=;
	h=To:Subject:From:Message-Id:Date; b=cGQAhj1z58/GM2VxNMI3VHhzGoKm+tMYkavF8QglanV2+O1zTrYXbWmZOxlM8owGcpgy7y7H/QbgQvdgU6ge4XpRRtTjIFkNNdQNev2Jky8xLzG+K04cEDE6/U47UlVIShRueKyw00QPVzjQO1LpzletZ1lsy3KbqY1fYZApR0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y4K/2OBJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y4K/2OBJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB4F6C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 14:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764253973;
	bh=zF8uaOT543bm3yZ7bz5zJ81DD3p1MqnKf8XLLL1QtHM=;
	h=To:Subject:From:Date:From;
	b=Y4K/2OBJ/qbWbIyK6WlGmvnTCD/ZzDA1gnK6b3Qwr0cpXUtqSKm7Y+Y2Elwk7lh++
	 2MFvL0MnQ5o0WqM0Xnlv0S39ngkix5EchlRZIatPw9rpOgBkqSEBJWSnpGijPGolcY
	 UfpuaDGESqnl5C/ZF7AKTFcorTj7FyR6VKgdjo0NWcRpL5MFWR7Nxvc52YXC0QEKQ4
	 wLbobQ7OWWoWVf9Ci2N2qirFeVzQ4EWCrwIgEZrt3ig/aAXTwExtilpDbEVceTFsLy
	 yr0CyhGdRedhkyyn5rrOo3gAp42zbbQN0PukUNY5e7MFu5J7Hh+Fj7ju/aRLvPOfuW
	 TeAj6WIRL11DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976C2CFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 14:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176425397361.26302.16955328438245278237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c87ffebde4bddb000c38077457df09701e573be2a2d968826a6a9b6c89ec5a52
Date: Thu, 27 Nov 2025 14:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764253973

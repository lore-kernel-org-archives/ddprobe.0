Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25789210186
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746733795; cv=none; b=b5V5pSXyRFTyc6FCg2yXms7RGB4AzRp1iV27kARJ4WP/BO6wfEHR9ySZjE7YeSxbSRFNLgxIpjD2IxC1LF6wbcaBLQ/DcdpO8k2TaBSO5MgSZj+VaM0hDR6LbIK52dMP5+JWsN3mXKQTNlv5+owfUYmxHwCkz98ekRq/K8qj4+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746733795; c=relaxed/simple;
	bh=CZiZekBCNtNP4qwVwd/phAoGDKXsyml9sYLhPnhSYHg=;
	h=To:Subject:From:Message-Id:Date; b=eM3XSsZnyUvPKywK+pRNtBt4FEfjBoFZ1IRa1Dxyc/DzhVBoQUoKf9r8JLgmpZ2Yi2Gaa2JZTbBepWrzQ1lVlEh9QknRK4zL2m2Qf1dTkk80/J7JSjV+nBUoYpYY3koek4qSDc5i4o1j3FkvH5JbOYLoBfy1KChNvbUeXhKE+uU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s+yFxqIe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s+yFxqIe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A283DC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746733793;
	bh=CZiZekBCNtNP4qwVwd/phAoGDKXsyml9sYLhPnhSYHg=;
	h=To:Subject:From:Date:From;
	b=s+yFxqIeyy7Ue4q3YbjdfsxmTZX31dHMuv2q9+/iG9OTCWF1ndmGSPnwRCXRuHlG5
	 XdqdSyZ+poCsBlcbZLr6MWfBALvIf8DBeQ8pJ5YkRI9TfU3MtZ1kg16xlmGbxcvizk
	 hyiiH7lLVvLPaZzB1oO5gNHzoh+fdQnEQPPJppy+x3jCy5c6/D2klhMLlty0lAbyZ+
	 OLpWHYRGaiw0MlKuME1mgTUemJTq3IjL7D5jt8NFMiPJ9mhQ5IH9B3RSKUaFJ0t6td
	 usx+pabuOLc0FdY0EezMflQgUJSgfeuEOhmg+yj8thSXnDsbzrqI4+TNGqR+E0lhuk
	 xGT73INIoc5+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9155DC3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174673379357.2512.12278356550139048855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c0f031f5247fe2db370f419acc6509939315d147dad4cb022ef9133674d5f75
Date: Thu, 08 May 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746733793

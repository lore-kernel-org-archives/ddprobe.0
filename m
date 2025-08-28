Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3AC1DF268
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756347594; cv=none; b=HT4cxhjlQtLLn7+uohyP+5QmK9sdA/uUVMrIDwbUNymyDpvilDXxd1WqRchUiGTSCm2xXQ+zNiODCFAZMFaz473JMvUDq3dMH60330pL9MAV4mIze49jpRJtvqavtdH3J7no/bCEReLh5Cyh7UM5wp+5/Y8VImUsw3QleOzvu2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756347594; c=relaxed/simple;
	bh=YlEDAE7btxAeT2sPIpSGYRGJKOes1kzEK3Nmu4ZnyXc=;
	h=To:Subject:From:Message-Id:Date; b=iZ5gvMrDO3AGzGMR8WzQ4+69KUtRd7ctiVPNWId5dGsJnSWxg3ebjWbPDiMaLpo1rAVD/9FFz3jRCCkFIjdTQ6z52AQlFNmxRthF78XvHy+Qp6CRUWSdzmVKaHwNdJckkrX0P59JfkntrqXbnCrkzKxbTiaJUf/UnJa1+HNF9eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oY/1oXxS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oY/1oXxS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3156C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756347593;
	bh=YlEDAE7btxAeT2sPIpSGYRGJKOes1kzEK3Nmu4ZnyXc=;
	h=To:Subject:From:Date:From;
	b=oY/1oXxSSfbkOnYtlCXQiiHCCpT1U4BNi1wy8XYDhmMXN4tq6JFTgzlXEEgNYA3Ei
	 aGjAk7OfgLqJvhzTdPtf4LtGc3gvB30XGHHHCSWb4Wv72hcDkvhD2OJtDuy9mV5m+W
	 XLugnLnY3FY4tTu8LGFzIUm2h2j6iIfftY6vmmjV7t/D2mjKSIQVhJIytQmXsrB223
	 6HGhrSTHuJnMkbaisYwy4nJnWN6ivPOPIjp3C1XpBbsc8LP8ZJC0p1krtayOa4ep5N
	 NimuBJWVjpzRvsu6kHswwbctl2NSx3g9MaZctfPZUTG4N6i2jUOg2awLkliJwkZtEJ
	 cyFE1JV3QFUBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F458CA0EFF
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175634759357.32630.4620565599705164633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6edaebb020cfde306ee819524368259c8c8140932402c8e0ebc7d16ec05efd56
Date: Thu, 28 Aug 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756347593

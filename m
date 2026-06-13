Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7C72C08C8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 16:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781366794; cv=none; b=eVr/GQFfi9Uwch1wCJDKQcNwCsV8JZ+S/uBxazYJF0g29jpdw2PhWfwrpo0XTdU9JIZugWgh44kC9hNnUeXiZFr3Ip1sSnWb2mMmOHdsMr2I2gV6jkWKTZBfivMNbQM0PwcCJTZHSYMGrPGkR8ZZV4iur8FWU5QEhLs4SAsVVDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781366794; c=relaxed/simple;
	bh=VIbup6yJFDvNDbPiXVPsmvIzKqSZyOjdY+KWhLQBkwo=;
	h=To:Subject:From:Message-Id:Date; b=lsT0ZpW8hVdP5+oXbeMYly2pCCFYinArAYLY4oDaSkZPdPkFBgj/EvpJSs4+vdnHqSQRlu8j65k3j+YGDwzlsgx2C0jQKARIASpWHutMvPSBn3EQI118OH8ukt9Cdpj5CjX+/D/7hFkNF1MhRDEs4LZp7gipAtW90Adx/B0z6c4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dmkWNc4N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dmkWNc4N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC696C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 16:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781366793;
	bh=VIbup6yJFDvNDbPiXVPsmvIzKqSZyOjdY+KWhLQBkwo=;
	h=To:Subject:From:Date:From;
	b=dmkWNc4NvPperqeMmshmlAZ+EIxowZBjnVxIYUg8Vw176eFvUqXxJWpTXuDwp6xHP
	 RYdzhaPHB7+U5lNogoVBThWpoPrUFrTjVpw9eR01ZO6jv7RqM8G2akii8SPbozfCNF
	 JkEszRHDcPyfilaGBjaJvohO8wM3vSQ21rne/94SVmqHST3B+fXfGrkxw0xU7wj/M+
	 aitj7Si/ZM4+5LQi4P9VA9I+8E+7TeE+6nf2QlNB7C7YsRw5xrdPnBBUPj2/JW1/oM
	 CnxrLPZqVr9CT90bnHWgWas5XgMgw9PEiYUWvGy9iZUX1xLT7F/mObWoklJfEtxRbw
	 sXq2D6WZ5uvgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1827CD98C5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 16:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178136679368.17021.15621727794397200265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 653c376fc0a18a495008227cde9197bcbbc6efd9fe206f593d7f4b16b8b4114b
Date: Sat, 13 Jun 2026 16:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781366793

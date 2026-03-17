Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D05D12D9796
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 11:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773746693; cv=none; b=heFRD94YiRAW1rx6jukGW19a3MZsQh8ZwWbIUx3ui2SJ2qFSG9ZTVOjNoJXSIQp681Xz9IVLvgXiBK5/rEXdH4voCswmd4V6w5XRRj/MLZD1cSGMyg0ofxErDJAeeeMjtPlFjumzYP3smKgvKXZ7W8gXnJcZEXzfsWbWAthNCpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773746693; c=relaxed/simple;
	bh=qPVj+v+pIa6BObttwLcP6FCyqKZdl+sVzX4rAI4hl58=;
	h=To:Subject:From:Message-Id:Date; b=S/HYjzU4aEFdaEXcic58A9E8SR3OIWJTxcJpqJsiD7FxdMdbhGNPIVtDe44gcOV2x3T1oZ2BL3pMEwm1z8PHNJR5vTiYhr73lCSP13OdAH7E4vZLn2qh48NjtekWhd8ogeLbFEYsyqJVbutpKyEUAXGA/v0Uuip+EMaFDOKCDk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W0WBbc9Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W0WBbc9Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B61BC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 11:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773746693;
	bh=qPVj+v+pIa6BObttwLcP6FCyqKZdl+sVzX4rAI4hl58=;
	h=To:Subject:From:Date:From;
	b=W0WBbc9QWUm08yftMeuZZrEP2O3kVLoi4FjAWTJglJA+9cCWoT6PDmPc/8EMJ0oET
	 i2s+0Oz1nNV8880rnvCqOx2qqoiuaKwlDB5SEW5ETEMU6rSroEPd1GjwyhE/JbodhR
	 6K8NTf8YctkHQW5vbRNyZJqXrI2ZqgfitaME0ZP7+1c425vjV35VlLG5zlOdaAN0ew
	 BbBq2aTz4kQGGBBJ8PEZV1j7USjeHeS9dHcBpTiLQqdo3xFwY09qOStKb51zq8Iebm
	 AYaSZUXz6CHoZ46Anh6quEuJ7CUh5dS+d6VSAzYvMCrF2gK7dH8ntWdNBGt3zM1503
	 WOxInvZWqN/xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF64FD8740
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 11:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177374669357.32692.14302644665226985167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a940b6a9a22581cf66c0ec3bec3c352387188336e0235fcd4e48d5bf4c13cb1e
Date: Tue, 17 Mar 2026 11:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773746693

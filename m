Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4299B12DDAB
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 15:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715959943; cv=none; b=g+a3wVoV72AJISI5CDsz2H8B4fGFTKnbSi86kj9munGLuec490sIyDFgRDreoPwDFYYJ8A8+EIVGPyiDF0O7jygscWUqd9omB2svhnLYykZYdH/TerDN2tqWHXUyZsUKzv0yCb0i7hgSYgVyQ+yadBHfsuQwHfSrgII/4qtM1u4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715959943; c=relaxed/simple;
	bh=d6AU37ZzqlhkbmJS5ICOzPWiylZmKjL1M3aHLpGOX+o=;
	h=To:Subject:From:Message-Id:Date; b=TWDB3tET5c9qJeQiF/1dMBdagkIwsnJ3l11Orq67UScuPOyl0TpVLlTNtqNgJLe4y0nMgiP/7JmrAJ736lVlEks48Lk7b7swnHoOwOZQDRgx81Vavq0kfOZ8eueHHJyU3jTIcpoEyuY1j0RWMnxpOEvFv3UIxygM1wlAx2xGZJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bG2O5ot6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bG2O5ot6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3FF8C4AF0A
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 15:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715959942;
	bh=d6AU37ZzqlhkbmJS5ICOzPWiylZmKjL1M3aHLpGOX+o=;
	h=To:Subject:From:Date:From;
	b=bG2O5ot6j3zuKk6yjAy1/CJpR6djQhWAUaWKX0/fjh/jVcmS4zHyRAV0TC8kurwp9
	 k8kmS/jwbK6YIYSAcpQpHXKnlVICPn94+5LlR2gcVwTvALAuSW1+ruY6W4IorZhwrr
	 O8h789SrAu2+u3ux6XdbbULQlgbZxt0XSLCES4+c+J5PQWz2xRrSOUf5ECa/b0buQq
	 PQUvrofztpTKoljTYAyealL6ssM4j6ceQIJxs9kt8vF66BpXPmm3G+5cr1ozfdIdrl
	 YKLGiSvEbNd2t71a7LyA67lJGVVjP5jTkmKFMZgdRJ/ycEaEUfV3jAXn6zfLXBvhMR
	 x3OUYPv76qjpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2188C04FFE
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 15:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171595994277.31569.9544507100568781932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0952902aba4aa98a940985b2719669865cffaa41c67e9911714a05a87827d084
Date: Fri, 17 May 2024 15:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715959942

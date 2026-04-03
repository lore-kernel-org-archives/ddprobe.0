Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2147D372EDB
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 08:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775204734; cv=none; b=cJAb7F+KPxn80p9hf+WsMFaCguKSazM+Y7lqNokz5Oh7vEeNDfpy1PSK0ciryZt+1+x11NmzdO+xEpsvU8XhdlML8kQDovqJ01uXvvwCooESpA0geV24u4qKKlOzpUwtH3GiAP7EjHaU608v3YYlDexTnxmW5j91K1oYGWCeWB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775204734; c=relaxed/simple;
	bh=Jb34FzJdRcSMhxC6yIJvkpYd03ZkYqrVBv5MVDCtiKc=;
	h=To:Subject:From:Message-Id:Date; b=VPL+idTWwq+laRXDQ3nxuLyoMcmQkCwgagU7uCMtvbs4owLpfmaBUOOcXTD2yebfSkED2jFJy0DZyFR1ypNg5S1BoaHirKyyKqd+YV6zJMvO8kxdn+LuN1xkEXEEbrWF2CQRs0+25TZ+5CQx/Bkf+BzgVxZmlX/SFOxxJPRsBvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UEjfN4Tj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UEjfN4Tj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA6ABC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 08:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775204733;
	bh=Jb34FzJdRcSMhxC6yIJvkpYd03ZkYqrVBv5MVDCtiKc=;
	h=To:Subject:From:Date:From;
	b=UEjfN4TjcBNA2NhKWpxfjBJsAlbIH5x8ibIqRh+5vNDqNQH7UtEx5VTnNcyHc/XlW
	 8V16+V8llmXtq9KCBeQKDqQ7oppO4PRbgywMTGRelslzepyUeyt8DLwawDL6nZzlDY
	 m8VSm8kYPEV1W4SAi9OtR8OWobtKBVf7quL8XXl4EI8SCxO37eoJfZNwNTyKkFTMpW
	 Wgq2VP3qDGOzcefFtRClI+yoRJAvPndWRbHWLuSwVmMOda+B6xcS00uD3+c1+exr2l
	 Z0awUYt2UTF3rpDKVwk+Vbp0ZmhuO2LoPlpXYxB6t9IC+KAV8yS9Jg7m63Nb5YAFZB
	 Kbu03+1NfSyQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2C9D116F2
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 08:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177520473369.29533.5606719693568349054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c4319685995495071fa7cbf166a7b94933eb46731003e4180f772fd1ee4dfd0
Date: Fri, 03 Apr 2026 08:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775204733

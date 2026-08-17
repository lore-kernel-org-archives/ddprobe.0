Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39573175A99
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786932034; cv=none; b=cvz9IeoQHBPu/Mf1xhukUP3KmV6gzBgaSXfS+3Oy3pBTEA/NEXhmiwZ9FbGryb8FwpVRmaa0HcZt16SZq/4vlaTdrQddFA6JfTSFRIyksvIAdyuqkH72Tdi8JnXg/uIiKPfawcUESPy3izSHbKHRmhlz1fPNBHKJVFdFOixZzdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786932034; c=relaxed/simple;
	bh=QFgkTcaISZ5yy+l6sSOEq0B8qhEDR5JTAUGHrLLDSx4=;
	h=To:Subject:From:Message-Id:Date; b=IFhm1vJquiDdxQKiP0j6aJa/RF4YMa/XHF2u7HK++UaIGPB4xsfPFeA3W7cdcBUWuOi06yp99siJqfizS3XCRSKqhOdQzv1ZxIFnSDyH6Ax0R/sSpLiQeJSXcI1eLqE4Hbi7p6a3QSKbBUb/j95goIsAeyuVakiPGXBglWErAt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AAipoX9y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AAipoX9y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D77FCC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786932033;
	bh=QFgkTcaISZ5yy+l6sSOEq0B8qhEDR5JTAUGHrLLDSx4=;
	h=To:Subject:From:Date:From;
	b=AAipoX9y/PqENlQTbBpWKpf7YphLnzOFaVT/KsMLz9//l5gLIUQDb20Y7hTOztb2+
	 vX+Xy/zjQg1gm8OKwwtm/kKit4lF0luf0x+hQbEWbj+Ly8G9TCGA7aEym0BlfSOkOO
	 4x8EE4dyg4w6p5T4IgC2zSMiyWHGaC/ArYl7B48VNlCudxjj/m8ZdSiqWMnmjb7iTb
	 kY30OV3WTPZ7B55941fR1ZnAfHFfKO8OaVnepxF7IgfMsGZkG7+xS9P2DML+jv8Dia
	 bUXL3KO+uO9/uDnB8nX5p0H024Suhmd8jp2FfxLHua2j6h2rRp0SwxRB2w1Mj4dBGa
	 gu8MX2zIPrcFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE87EC5DF66
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178693203369.4171.13876351575718244881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4889da075d8681baf4bc2c47f08576cc26a69fa69f7267dcd41254dce7362b69
Date: Mon, 17 Aug 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786932033

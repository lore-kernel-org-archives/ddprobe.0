Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18A9A5695
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758832194; cv=none; b=ZvzBPpZ9ukTdAsqfEq/sSQ8+WNnbhFNnAcBnP94+q+nVA8e1fJ25vmEIsrVAS1ez87fXUVIIPONaGrdAQufOwlpv5eXCldvPOiN4tYmp++xXxOSGZzlsP4992GDL6xJXc47JpzZgR/Oyj5Aquxiif+sOFb5uX3OlMo0Lf2LHwJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758832194; c=relaxed/simple;
	bh=hgN2q3ORHU4zFTKtRpVqiT/kbZ3JWjL3Tl+s6cIxY0E=;
	h=To:Subject:From:Message-Id:Date; b=p31q2BoLTmkqJmW/dGVxzZoCKSpTzIIUol69XtjTtQNPx+qGDDYjZRVBSHzxvgDI8K27tuQgW3rO8mkOCmJuamsjdB38Ntwfqs+G/1gvPZmfWnnGGl8D0gDcoKDN9TTIUzi6W5dq85GuxLG5HWKWvoPbh6VmX51VT68FxMPOMfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qq9CtK7Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qq9CtK7Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35B0C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758832193;
	bh=hgN2q3ORHU4zFTKtRpVqiT/kbZ3JWjL3Tl+s6cIxY0E=;
	h=To:Subject:From:Date:From;
	b=Qq9CtK7Qf/PCuUYe56D/4WRos/IWdzgrSGd9zc1RUI/a+UNTvRFwX5ssjcOo2yhnF
	 Vp7y8gxR0CKO4GfuKFHlAvsXKa4YmZ6ufv0LHldnDNpdzYVNErNFl1c3FkBy6hclKZ
	 icuTogYXm5oYUoOzOV32sitTPak5UeXKbW9t1dcYrdy8pz8Mtez36T0fz//bfUo905
	 6GwGXVCHvma4MrkRaFtB9PdRCYBqfieuClKqOliEELMYRUKZpJo6Idxc2nmupFidd/
	 uS9PPf2gh+mqvMquVkBSt7S0jk6APZYPxrawEI/P5GFZAnsq26frkE28tG7zEY5M+W
	 cUehxSWSbstUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906B2CAC5B0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175883219358.10535.11251167237892407410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8360f4c6200fcce8de367c68e46d3449faaa09438df96740b390a5191c033ac5
Date: Thu, 25 Sep 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758832193

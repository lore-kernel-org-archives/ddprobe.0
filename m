Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC53314B8C
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768332834; cv=none; b=T+GS2ZaDjV7Gkg6iXW/LRgts0wJm9gC/uJP9E8v4xteakjZxNiWGpfrL+A1YCDv65MSf+S+XbCztgw1+2/XqOgp7YOO2m4pZEjAuLXpwhEljBkW06VwFga3MZvTAQEDt5DHGEloF4UhKrvyR6X2bBYwUWS9YOxnFfutMJ88L7Yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768332834; c=relaxed/simple;
	bh=QfCVNZHnacbjSJFZ1oV8bdMa40besQuTH59CDdIeCUQ=;
	h=To:Subject:From:Message-Id:Date; b=hIy9YsWdFcuRu87XJtqDK7BFg2CFg0UY1Cp0tm3lYfTprIUk5SdWOAVuFlxnqTCnfvHcNgMKYw1Z8dQULiCqPfhIyvSiUr6JEOu/AOPf3YP3El16CNbx2cYVquzgiy+n25CYycCRxChpWXL33hgQrPLD9d+o32YpeJVHhYZr6Ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=edpI3V8j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="edpI3V8j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D584C19423
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768332833;
	bh=QfCVNZHnacbjSJFZ1oV8bdMa40besQuTH59CDdIeCUQ=;
	h=To:Subject:From:Date:From;
	b=edpI3V8jlCyrMb3XY5v6rs7FZZbhPKDbCGJOKuMwdGpnX4GRQskJXeBZgHnaUVxsT
	 aQJuDf3Hcl/fSVjR848nXEJRTwztAFcI4dx9Wx0xbo9rZrXmHUa3REK6jxEkdy7vkk
	 VQ/3LRUaJaAWuCPwkLLkrjLaSc3OKx5/U663fxpSjMByldvytmWS0RND9qYaEpjebi
	 RwMkEqDJY0iFJ4+NIiPtnW8C2VTR1l0j6OmIymESHUQeKXB//Awm+Q/j1E3ahbyFBk
	 7HfgSzyeJ1LMEkMwGMYPhULfO07uN2JlWSDDSqGq/E5g51CtxRuA531c8g/2v8hw8t
	 qMcdWB1qdg+AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE0DD2F32D
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176833283358.12566.15690083944354895277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a097bf59fd33ffde2bc5d761691357dac66f9cb27557dd19b3f0f01a99b10c52
Date: Tue, 13 Jan 2026 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768332833

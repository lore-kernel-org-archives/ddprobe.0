Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF8BA6ADB
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 21:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B108C433EF
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 21:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672176087;
	bh=JylxSDKZI8wtYVEO6IJROlahdioEE+miAB2LSLT6ou0=;
	h=To:Subject:From:Date:From;
	b=WHwXLX3OGeXtHnFPQm4cjsKShXFKLalQSVKMR+x9ILx09kBZhcizm1rGIwT1iDBD4
	 WsXBqWNnBz6MLEXwJDhB+jQS3BP+zowCmbvYzpoUbylNOkq1/P20d2G6y4yIfm+Drf
	 6E3907n3u/2Qpfj71pJsmNr3U5mFn5Wu0SNLevUg925nRHrKWhnRzScwwwHr3O8Ptx
	 FvmJQsaqQm1fMt6Wuc8RvhGX0KsWNqXPs8Rg0J0AeGX79FJf8NUz9F0VlSzucMYtlZ
	 hRQwJhlv4riqlKmFzXT82xQfHOK/PdZwPZZI6+nA8fONAffDkKsCXWshwxPDKcG/bj
	 XYpLGEP3gVXsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C5BEC4167B
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 21:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167217608743.24906.8842530532135335707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a117ddfde8089226ac848d426ab37fb3221c4c0eff03164414991c9635caec4a
Date: Tue, 27 Dec 2022 21:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672176087

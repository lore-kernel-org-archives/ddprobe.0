Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD2956740
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 23:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mu24orxf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99247C433F1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 23:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704755296;
	bh=7OE5wzDL6ghhBN/HGdOClOlHTIrdRg8wbKamGeiA2xc=;
	h=To:Subject:From:Date:From;
	b=mu24orxf/ZnJFqC+Q6rS5LoABVEdrz0imsVaduxVzMmRGRl/OOavhLM9TeTmnN8Dr
	 bBLo9amfaM3IX7mFhiuAeaBLofObpdP4gl6nhPyFokmWTU+DRt8H0wlzp8bTuYm9qr
	 SpDgAOsC3rhN1qiK/H+y/AgNEcw8EEoeW36pIe7pE0xQ/vgQtJ2iFVXVw1eMhJmiX3
	 zuDTdCFjRALr/zM63D0/aHbuRhPf4X+g1Jt2tg//6LJi5+6BD0zZebXG3cF7M/ZtXi
	 XyYbxB1nQ48MQa35AmM6mw+wr/m5oDfJ8uevKZ78bTX+vzYAnvnt3kbqcL21IY/bvk
	 zYUUeDvkxh0yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76BCAC3DA6E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 23:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170475529645.1954.3490881349447796092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fc611a28e3d5d8da3c49363295974d2d8ca18461acf0090ae48c45688b50ba7
Date: Mon, 08 Jan 2024 23:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704755296

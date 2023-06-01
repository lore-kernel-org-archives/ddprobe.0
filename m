Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 680AD1FA7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 04:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E14EEC433D2
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 04:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685594045;
	bh=D+noY/bhBmoKvUxKU1rU22uSNjVN1kJofzB0mESMUFI=;
	h=To:Subject:From:Date:From;
	b=NL/hFs+Q0UpDmvNcRrHDEUHfG8epe5y2Hykig8HkwH0udrgE6LxCDOHlDbEsAchpN
	 UfGiD81cuk42Aequ6KnY3Mkk9oLUGn7ptrFpO2zYGmxhorFd4PzII5UMdb6txHTdgh
	 ljUxRZRVf+Ce/jYgJkQqR7SXFiTe5N4FQlf03oYQ49+bHHxBYEjZIUjLrH5JyIueoL
	 Akt7VWJUj7v+9vq7TOm47EiN2HA/YoAdywuT+OzZhpZwuv2ufGtvhmxZZyreq+PXXf
	 JPwK5UHPXRLqTEC8gfJmpEEIANcZAbjShbjSGU/rt7fXDc9kmEMqN6YXvyyma0dVJo
	 0mp+qBaRCvRSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF83DC77B7A
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 04:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168559404576.17978.16767908927277705899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3c8d66b8fdf502b44150839506c7cb41c1e0814986131c75f3aa1fa278e757b
Date: Thu, 01 Jun 2023 04:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685594045

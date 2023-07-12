Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DB7A441F
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 12:49:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E52C433C7
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 12:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689166148;
	bh=DVxcxfEXOP+6ZcDpuoFVmV9Hu/HhaezRDOOxNAK2nuM=;
	h=To:Subject:From:Date:From;
	b=sfvKMXArWkHAPW3xGQktYNhnYzmYBD9mw+evRe654i9Y8wOJ+fgpEIt0mLyAtAEsJ
	 xNG9LJbLIXOEyXRhEESzpmDDjnUFehTkOOtXlwphXD3Buu/b+71rwPDTS5iCK1sh1y
	 NQs7oJaCIIb7aQCCz2/oV3Vv6RcOXCL4wff31wrwMDXJS5HT/ZDoIxxWRq42ZO2j99
	 JQI8AyQKTj/TdhoXgjWQLOANT4ZiIRVevnUgFvRcxugCv0SNmq8dCtMLCPCTo2QCk7
	 SaIjKc/Jz2xowB9FXmdpY7lz7qhWu9YT0gLqypqAiAvG2hBECzZERUC7wFlSSJlslK
	 XBWBFI2htuQSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EADEB64D9
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 12:49:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168916614868.25647.5593036920823429982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82515ba01cd27b7408b970b93daa4c3c0777c06ddb411ed9233e687d09bfa0e7
Date: Wed, 12 Jul 2023 12:49:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689166148

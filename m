Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 925D43D67
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 12:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07AFAC433C7
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 12:54:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688216049;
	bh=jop6azZ/Rypb8Cr50GzHVF4Gz8x9BFUAw3MkSfrTJRg=;
	h=To:Subject:From:Date:From;
	b=Ies+SabrEFd4i/cU5XoZuafzi0sHP0iNlbO06uaCpzk/env3Cp4ojNJjnHuxwqzXl
	 PMdiWJ6CN681uwrptiLeQgS6A9vejpbBZaRh//foAyFn9iNGWrQzXaNw7PLQtnO0Ol
	 kybVcZqGSAf8BpADvR7j6vF7wuYEylj91ObDpWsr7Hp/bdXnRgReJXJr/oDXLNod97
	 SYXhHTH14PQSosX9goLIyc5kXBjIllPMW//qW/oP3FsgOor5N1fTJvxpN26rW0cWGy
	 fEz2pAAdB5VKVmI9sk0+YrlcLRWLVQAWvHgUku763szmkd7FkL4PEbTqIAEWLH7t9X
	 /JDXANu853R3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DCB43EB64DC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 12:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168821604881.4740.15534855740572625519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4df3734d59307d2efb12bccc9683bd4cdf8af8686a055d4b763232fb4b3620e
Date: Sat, 01 Jul 2023 12:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688216048

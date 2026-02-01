Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32CE43EBF07
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 04:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769921634; cv=none; b=s4sWXtZxZZD77DtBu/mTL81M7m8KkUUbYWoTdHyB9L4596sBDBDaI1GgJLtkP1naWZkRqrdYyARIF/EA1XlZwfOWFwAY9UIrbPPGLX0Xj2oQqB03zVotVEdPCCIT0eVhN+smKSGIYM10iefPHviKVtfKIClPOmjxiwuyVQDVsqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769921634; c=relaxed/simple;
	bh=/xtDFMC+2hNxmj7DjUifE6dr5B8jQ4pwPKIL5oIdKGw=;
	h=To:Subject:From:Message-Id:Date; b=jCH4buzmVETUeDNw+6HtnlqoSVKDC/PQSHV6A3VHyU4i5HPVhHA/N64Qkcxh5y2gPlguajInZDQcTHWvC9ZpbEmxA5OlZxIrh9MDxEDLzwp8D/mX2JfFOrIXeStGo6NvJDzUt9HQinqlTgOO1qgTbH1in7k73XWulNyD+mo2mZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SOArIP/p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SOArIP/p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA523C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769921633;
	bh=/xtDFMC+2hNxmj7DjUifE6dr5B8jQ4pwPKIL5oIdKGw=;
	h=To:Subject:From:Date:From;
	b=SOArIP/pNgTXY8EbwFCLPMEUwCw0AoN5uH4cJhPUqF+gjt1RM0hbLSATugNpNY5MV
	 zFG6crSz8aahmxqHMCu0AJfkk9Zj7fqeY9Yx9gCPV8d3O9w99JHeyORo6NOEmpLLh1
	 9T8CKNlFLCZUzjRb9+UoEsoSW+Uau6BgnJXzMXEsoxOcc1H8qL/+6lR+ijQCYhufv9
	 JUCtxWhDnOEWXTf8+qY63ZCRbxQk9QoOUu0+B4vVXiFxu4w7fgp7OtKSwVEWvnGI8O
	 cfm0/3mNJ8OVJUlKGSNNJ4K3nqPq0r70pxZXvXl7I6TvefNu45tuaKuARZrcx3LlLK
	 rdka2RqGxS8yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93165E7C70D
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176992163358.20950.969344939276091508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dc08b2b7101ed3a257713eeb90befaef8531343659e502df55169b89e9896b0
Date: Sun, 01 Feb 2026 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769921633

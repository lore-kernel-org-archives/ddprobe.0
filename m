Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D7B33655DA
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 21:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779658954; cv=none; b=K5PDBgCAACWdJrPIWUEtzKX5P5ZbfClJsBiZJsUKpC9vTCrTBG0NIwUuEg0XhUbGpuOToWGHes1DbmOAIH8u/hMCF3fJ0V2TmDzAh4VgYBE5+Bc/0LIaqh6X8RDMbKq94yEC83pj3ASbE9nCzwYaTYNodvnFZbmtZWmsAQm8pro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779658954; c=relaxed/simple;
	bh=wHgCz7ecVdXn2Bk+KVeIU7vcMvBEBz55mIvkxnwC9cQ=;
	h=To:Subject:From:Message-Id:Date; b=RnBPkttwoqWph8g84mmrd/h92BaFIuUfLsyCHej5rVF3xcrU35zSiHicKS65tvF0U1qclbbiAASlOx5jvgFdxI7PaEEFdYGcn1G9woTNbP/6r9lpvVMh6TRMONCt59qtvuIHItb+daqAh6wPHtFvqYWZTNSeqk8bLUifg+Vy2Ec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FcU3A5tV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FcU3A5tV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDFD0C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 21:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779658953;
	bh=wHgCz7ecVdXn2Bk+KVeIU7vcMvBEBz55mIvkxnwC9cQ=;
	h=To:Subject:From:Date:From;
	b=FcU3A5tV84xBB1dP30w79YaJwAToptOj7K8tHOiOQ2NEYNpnaoBqyXHYlZXckMDfk
	 95zL4UgqOn4nVdNx2gWJoHW19rUBqwz+c3CKxTXGajSs5NvSamDnpNCgX38+9CNTqp
	 P5LNtcwKnewcdeNZt6UlfSScANjYK/9y8KFema71JG5UcV32Z7lqnCsQgNoJ/36Ym7
	 AXwE0R2z8G0IRPRWBzS0yuJOx6UXhXHG0snOV9pyUEI9F6E8Hr1iPDfQlmn5te8RxK
	 5Ty7AhiVS58AluFKPqS/Tc9I7toYVtZA090cbveUkLf8klObXomk3JDts9mTeJozXf
	 JW5mmWfpN3w7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4150CD5BB1
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 21:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177965895369.14013.15335388531373775511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d818786b48a6738218843589d3abfabdb4b3641ed402b255bbc98612f394ece
Date: Sun, 24 May 2026 21:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779658953

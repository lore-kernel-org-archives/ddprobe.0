Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04A68296BA5
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768692834; cv=none; b=olOrr99OrzjbwVO+avVpdXka4nSxheJSc98gDfEQPMaYmr+fbaoviIYvMlhLljfOEG5sFilNNvVQWUpBV150uZtWKajEZ3EDBUQBKdAnNLgVzBuQFwfOmbW/+lGf7XmB9iGj+hnLLgOAN3RbdjVO7NbgQoYb+LN3FvUC7JXJNh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768692834; c=relaxed/simple;
	bh=mJsz5JPpXG1LxFWxxSeN+xrqhBpUPBSbIq1soJSt/BQ=;
	h=To:Subject:From:Message-Id:Date; b=nNen6fV5U4juWeQOAfJG+17FymZDIrSCWeroqIcJe3ctZNschDvXfuZm4ONcDtWWVOJnLTrA9k6OB9I5b0qx7o/BqyGdqz59IH+PvmyCZuMetlLTA0FhbqmEFzmohGmyroxNy4Hyj6Potq175H/GETKHuiSR054DvFe8mL8rdnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u7ZlB2Ni; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u7ZlB2Ni"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C680C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768692833;
	bh=mJsz5JPpXG1LxFWxxSeN+xrqhBpUPBSbIq1soJSt/BQ=;
	h=To:Subject:From:Date:From;
	b=u7ZlB2Ni0tBA81WvjcwBegwXbFX4buK1UzBKKQAadOZZJwkwvsqKgj4+Tc5SG8V8b
	 vBm3wy8Bdq/bmAGpo3Ga3/E1A/fW3fAo1mIkATQOLfqgOuTXyRUx4KPsDpbhj6QM9M
	 qTU4nK3eyWN5iHG19S+cUl1rtIh1sTxU+p+Pm49mpuPHzHRdIjI6reJaw/cTvpTkjN
	 yIYvnu5+eRWpyG0h3sKHYp3MNCcmZt0a850rXTOQVLsroWPJX1tPs4U2zK0aXLBO8q
	 7gntUC/KFlT24LKzwR0wTakvi0HGh2Fo1XwIioia0N2t2B28KPexH2LhlUkCuQxD3Q
	 O0Ol0HY4KzWQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0DECA5FE7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176869283357.8307.15537490061783644505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1046d8eed42e348908ed422ccd3cd67e7e0994e95070ddbf480010b1cbdfd1a
Date: Sat, 17 Jan 2026 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768692833

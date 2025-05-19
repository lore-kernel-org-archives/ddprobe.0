Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318CB2066F7
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747680594; cv=none; b=OJuEg0J3g/nMZxdSfy3IwAFRLNqytfZ/49CQM4vM+FcqvjVekFIeDixozo5OYx0w933FkbsJwUw/R9PIW8zJ1AsP+jOxBVZQpfXfZZYbaF7Fool57ZOV89DmkFep8DZWh2+jJ5jtRztEBeP8XgSNgfoc0SV+kkJwVA63DZ1Eumo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747680594; c=relaxed/simple;
	bh=cLAP92X/7Oa04uCx/I+CxFD3+RcEwo3iu6cvXqF4D5U=;
	h=To:Subject:From:Message-Id:Date; b=uFS7GSXSCQ8jOsHHTNfl9b+zecj/h9zYG0Lsax7B+Wmk8D5KYNniMFSAHQGi3LwjP+mhJVk8Y+o64ioCZO3ZI/UoCLtFuwH1A9o9SjGgZZbDA9Ebmt9eL0RvCBQu4LIZ+AlytIYUWc1jdnoV0fLBJvxejczYUYwPvfbUHWd/Obc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EF7NE47G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EF7NE47G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30BFC4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747680593;
	bh=cLAP92X/7Oa04uCx/I+CxFD3+RcEwo3iu6cvXqF4D5U=;
	h=To:Subject:From:Date:From;
	b=EF7NE47Gi/3i54eL0QZJnd/N2QdhjAUJSb8n6e22M1hVwyr1gPJ8bVUaFICm9ZwM/
	 6sBh6wnXHTkj5w3GtKTRhe+Hg7BRD+SO+xgfbRrPw9GAaNPdij+kQvMJYUf8rcKJEh
	 tEiHRvXn1QTjt5EAVHMjZo5y3ymOf03ZqREl487LXcLsaDHsbaVuzEGX9y8dxMSIjv
	 RnCfd6OgW5Uy6ZVLgf2tZI8lRNCd1nwJR9opECe4RJatOnXvRiSIKFXlDUG31gEjHP
	 pSt0IV+h5f9i4uhToRfkCDZ39cSJuGJJlswuqmZMIE/YbrXA1R7tj/MxGWEtWYrxoI
	 iW6MECHw/aCSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECADC3ABDD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174768059357.23540.9771238746624471979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2997f01ad353944635ce17cb9da280408ab98ac44e44a4f927a4823079c6ac8
Date: Mon, 19 May 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747680593

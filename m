Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ACDF7260D
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792200034; cv=none; b=WvZvo9C4XfbMM+iJNfnNkr+ODtJXHO3CuLV34epBrJ5KdvoDpF9OKwGSMFLaQOeHifwuNsmc0wjKrqTho10nzXCUTFioVEZq/FUw6558NyUavWxTVHV4VwCS5ybbXXBFbHKZ9pzg0AVbwQWIKlSd9g/jfOeU9sz2K9USzaRAPcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792200034; c=relaxed/simple;
	bh=+n+QyIbHcfk2RSUd9Ln9uEecLSZXTHWIxRJz73y5jNo=;
	h=To:Subject:From:Message-Id:Date; b=jRvQDNoZCrbzYsXBHbdEtO/JRVfbEs5bm+bcqaofCQoUeg18/YbP70aJRN/Lkl2k3F+6VVPIE6wdOyGwLozl+BKqnbgRGxLwjmzVebPsz/f8p3qrcwSOzU17RIepiGfcjH1VcpILt3KG9NndBejngF5THD5o6fZ+7stEeF2APS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OqchtbUw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OqchtbUw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7263C2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792200033;
	bh=+n+QyIbHcfk2RSUd9Ln9uEecLSZXTHWIxRJz73y5jNo=;
	h=To:Subject:From:Date:From;
	b=OqchtbUwVI0blBLYDvUH4XJhQ+kNGah//xLbx67AZqQGcP7g93Yftjx7k0kAwNevB
	 2sDM705FE95W2QAeTtIr/UwnKJnwaTYM6uvkvw4kT8FJWsSPS2L4oSqiSZXcxeWtzi
	 WIgwIfK7im65LJmeAgftwrcyeVv0BbaGcEyCBfVhPpZG4h4GCnzOTZK9uPsXEwkhBr
	 Np6ge9MkBLHFA+R6gvDtKO+t4QmSgG3uGuGLq5t9+2qqPiFovs7A12VgaE85pyy5Ba
	 uOEXZTvtSjeOSfdYcWHblGtK2wKBSCzZEqRw29NCRtWLvWg4M9HhInuRcHxdKrYRfQ
	 2kLO/RWfvvwBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA6A0CCA490
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179220003375.494.17956856461300494017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0af4115be3f379c03c035660f514c46ae189e62dcbac9bedbe28f7af6ea35df
Date: Sat, 17 Oct 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792200033

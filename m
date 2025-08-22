Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3094520330
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755860994; cv=none; b=cFTbW3Rz8/cXhWjKsK5VnI7PXunj+RZwVuhL2enR3LwsdSfv/0vzKumi8Bto44RB0tdXrY1vxTDVJrHOfsNwBR7rvKvpFIhEBsCxLwIBov9mVWK3D0Gj3CNpaOgN0hVDSzILm+gqoZns7C6KdJW69kBn+cAblHuZACjFgh0dp2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755860994; c=relaxed/simple;
	bh=5XFWf2G6pVrMfwISIh/qdsgkolKLlt7Oo+XNeJ6peLM=;
	h=To:Subject:From:Message-Id:Date; b=NQaIavOlWaiBfOrmyvK6c8AQ9aEp/ClCJ0Fv7UaAO5px7h129HMBHjJp4o4lNQHIQ5nEci7Xhtu0RYFo/b7g/EvgH++/I3QQGMCBusHRnMsKh0NkOedaCLkyUCsoxcLNh6C1qYx78NznceIoNQ8kstlax39enUncDOjglgfTnXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GNg5hPt2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GNg5hPt2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0790C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755860993;
	bh=5XFWf2G6pVrMfwISIh/qdsgkolKLlt7Oo+XNeJ6peLM=;
	h=To:Subject:From:Date:From;
	b=GNg5hPt2pFNOu+qdmv1JJ3j+NyO3CTbJadkHqphOdQvY3uw5dK8xd8Z3CT055NFuz
	 ahx1gnV2MbtmdyBn1vBZ7YwljjnvONbpYUbi/kGs3hvEy7+V9uvn7/k+tQILuLY4Z0
	 264eb/oio+AD/Jcfg0SIjfpiOg0D9K/G+r19UCjmx5HTXNw27MLfhqZg9nU5Toho+w
	 HkO/KK2/ILXy7MgYZh1bSZcEJCn485z3/Wv0TlMbgx8EBsNlYVZAnTYisqRQZjc91f
	 Ls/4rTNAJfG6aQfHC2tB4w35IZoN+cY3J6tybYNdqQFUmyLa5/au2C10rcCXuXoikl
	 tW9IDgzLP8VBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECD0CA0FE1
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175586099357.3462.16323318424612727302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b776b7245cbf2c6003476f2de520f726ce9892734589fefcd4496dc1ce381432
Date: Fri, 22 Aug 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755860993

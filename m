Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 594851EB9F4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742893194; cv=none; b=t/kT7JOjy6K+UE7UMlD4QdNTck2VkNlzJv4/rpVHtxVV91mxUMkQehNneVq7wHxYFSen8YICpsEuqljCQAirdp9oyBiTH1EImTDPiN/CHuQ9STJubWam5Ne+IlhsTtMTlRplyBDVTxY+2YpSzvO/kToXWOdeuthizIBg2pFp4bM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742893194; c=relaxed/simple;
	bh=BhfEGMrgHGt8xMXqsNEmk8Ztf6WvqnbLJzdz9W5GVcM=;
	h=To:Subject:From:Message-Id:Date; b=ZI6ZG4xy8j6MEedDGeOt4MCQc4P64kBIzc80oSpfABfuWcSxUIa0rn3MH38tx8ddkH4h94PQAt428+26hqRj1cf2D3us4UASGA8Z3SqO9yODm2dur9Aq6YT6ZNOIUNVI3HfdUghlDmZPlfIhomav77bnDqmfxnSqlWhuwzpZPWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S9V/DbvW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S9V/DbvW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0FCCC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742893193;
	bh=BhfEGMrgHGt8xMXqsNEmk8Ztf6WvqnbLJzdz9W5GVcM=;
	h=To:Subject:From:Date:From;
	b=S9V/DbvWiX359DfVFkA4MIkiOdsL9laHNVDTPtvMEXZiPc150fqQPNhpUfgUMTm25
	 IY1NA2ijmmfFf1XvNpm8nP4bALcK5kVSd/JTlTOXYAU/EWrDKA0p8Bio3u2X5VCjZ6
	 oD4cLCUvbPHsvJQzC6xgBPhF2lXN125jAjT9TVUlIwifQO9zXFYVkTQrp9MKBO+RLJ
	 PlYMABYIxbBQf6igHCwoumDkgzCdPzvYJlFxSLkFpbqpQ0mFD0E4pvBbKXgy8q+jrk
	 GLIsg1QZ03PqOBr3OQ8aF7AHRdnzSmUXCmY4Zw4CwHI5/VRsnJBgOFHxEaVQWq36fG
	 Jn7GxSXxNR0gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6A47C35FFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174289319367.28490.16727947506073744932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edfb0719afb741761f207ca8c099699ca19f52ee80fae460ba5a1d39169dbd77
Date: Tue, 25 Mar 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742893193

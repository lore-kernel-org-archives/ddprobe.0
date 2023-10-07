Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 583B5179A8
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 23:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KVa+4jJa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C638BC433C7
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 23:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696722428;
	bh=wl9hM7L3I3KMvG1SADqBlwnwJaav/rYNBTeVXOTySHA=;
	h=To:Subject:From:Date:From;
	b=KVa+4jJaVMtwy2RYTYEX7he1jpxHrD5BUo9UZg7O9tIhkMbcpqmjAiB7yuYvqKFT4
	 7OWK6DgzykI6zcFIL/+c0qg6qDxTQbllzDtYdrTRvL/ToW2wNg7MK5yNy3vA9GM5Pj
	 QNcUSwa3/AWmb5IpT3SBU/b9U84L09W0RIXztVJ8rUsS9r61uJenyxJ0Zf07dglDQ+
	 0nVF/enRzDQnvDDzW0K3xhuGE1kiohjSTHXORHJAld5FuKyxsljyXo5gzlqd4CERiF
	 8gCjl5ixZKBa7kUG4jgv/LprRLN8xZfaim0TJgn17uUT+Nr02KL4k25+LKrWrRqqtl
	 cz34BVZLkZqjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7701E95A77
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 23:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169672242867.1474.11805746057393504467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f5e29f009f2531c554114387a0cc67a8be7e33f3e06f3ee3f875f9cf71d536c
Date: Sat, 07 Oct 2023 23:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696722428

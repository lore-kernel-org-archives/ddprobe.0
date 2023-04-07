Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FCEE5380
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 13:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D13D2C433D2
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 13:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680875345;
	bh=9pWJfnu4NmxFB6y7+iTp+zwlcXAR5GcjllMMXFNV1TU=;
	h=To:Subject:From:Date:From;
	b=DTSzzRBUp5YDjteSAE/QkFBtXSdDIkB7dAXOv/aF9+3U93OodHYAZsOvtp3yVBWtD
	 3VBfoRlU72ErNfGbpwcJyGoH/giBsL9sh5dxMYa/n3W0WSLE/yB6Zb7Wgbey1aJxue
	 CUeokwCqv8ZdEihv5cZmk1/RooiQ6yLVi/FE/hsugpgGtgxhHTpD3ZGtqrdrAn8iJW
	 yxollOCtxzNwXl0o2Fy/8wxmaMaVpnlJ4ku7eUPF3RT9RGlfy+b8mSgRKbC7GmXU2o
	 gEySWT5DCSJBBBkpfT4dhvfu1buDUx3Bnts+XV3Ts5AvrbYQEsbdxocuYmNAziSiT5
	 qYt3a7CyHtdjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3341C6FD1D
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 13:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168087534572.748.18261795265326167297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c30ba4f7297ec82839fa57d9b5ad779bf1003a9827ff18c784dcf739187d0d98
Date: Fri, 07 Apr 2023 13:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680875345

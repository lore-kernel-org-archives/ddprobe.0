Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DB007B
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 13:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 50038C4339C
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 13:15:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682428506;
	bh=geScu0UzRBCBQSPjWR5e7c9OKysE5Qx2GH6CkxacXUg=;
	h=To:Subject:From:Date:From;
	b=QgNAt6wza65os6BHabJU2YAxJ0xwSgpEvjHOGeERhcQyssENrfzEkLf6uogQMu9hH
	 KDqeqDQhrM6e66irvbFAFgjJEFAsCLByG1gGlxAhdmKrNCdpv9rOZz2iKlUTaVQSgK
	 0HiGp7tnnwKiiRB23szUZUx6Zc8h4JLcme19kGnLwaYPgSrLkdCk9cIfyEcTxqNl8r
	 eLvF6rX2ukygjF6X2/LdaqL2ejus6iT2vVXNimaQO5b/r+hV1ygnCipBDDIIyn5H0u
	 vICZN6q4vqnrft/qM217Spa0DWtmYW3ugKgoJOEYj55KQ22F0cBl79SMEz03Y+CZ6G
	 LtxVxW+/A2LTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2E791C6FD18
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 13:15:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168242850615.13173.1134992448125193067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a207dbe4a3c56117f10cc3e902d5ad2f5bef757373ae6c1ee83b05acf3781d32
Date: Tue, 25 Apr 2023 13:15:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682428506

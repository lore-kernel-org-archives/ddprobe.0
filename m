Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E0D917EE
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 06:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE337C433C8
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 06:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688797028;
	bh=X2JYL6UMlPpHpcrMTI1+xE1R49CHiW+ONBI9iJ/HZ5g=;
	h=To:Subject:From:Date:From;
	b=Ki59qnq35EkS1DdYULkb/tRe8FbHfrB6W/d9biLzB6zcCPQP71u/1spSCp7lncS0c
	 09kxnCVn2b05ug3rwsOJWISUXyFhhMnNYOqe1bnWkKdO/+tTA+vvhYFZCM0wFPU+Vo
	 JEGHYLjGlRMgAqr79aUTyK8rNqVMSoplG0rNeMCOYbYxDj6KOjlRLdTY5Vo+FJK4+z
	 U48W6TbS2scS6ZwSrlAqQEzAJZHq2H4zWgrNFnEoSx+okJ+31kx8T45pgLP1gxbzEu
	 XmS25rHh3kElHLnc+aaqi1Z/GrJK8ZY1q7dQNV4bsgHI3hKKM0m6hOUb1/d+2LRemQ
	 RNDC7RnI3m8hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3B5EEB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 06:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168879702869.3657.6114941187355002151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d5cfbb057132027ba3ed56948a308e4cfa0e4dcfdb033c34641e692a4a6ac44
Date: Sat, 08 Jul 2023 06:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688797028

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49367395
	for <ddprobe@lists.linux.dev>; Sun,  3 Dec 2023 01:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PEz1D6Nt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80DF6C433C8
	for <ddprobe@lists.linux.dev>; Sun,  3 Dec 2023 01:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701566296;
	bh=bZP2+qZgP+JGQ0t9H4rooN+B63JpjWHR+XByLMFq80w=;
	h=To:Subject:From:Date:From;
	b=PEz1D6NtRSTuC+QB5vz9cmkbxWWWwCKdC08XVLj26w0SAdOokVFuOm3K1N1borMJW
	 E11Ef465B8KsgtIu26qIC5WfTRrpkd8n+s+NzWBzdDX5gXVn9ulssGtuMNkgB7Rg1E
	 AfOEx34iy5hJCRM+qeTei0P9ZkVEUxI4vBob6IJgFwB65ytHzk7QsE/6hUsFFcxYTM
	 A4NUFvEl+tBoqrMJLs4/dqUgph+tItxypCv5pwAAVRTcXPfi34vD6L/Reof7ZJ/XZ+
	 OGu0V83no1nTRPriAhKg56KoKCJIhTp5SJl1r8NGOIR2O8qyv/p0mytCTPJqewrYnG
	 /Jf/O++vbl5fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60277C4167B
	for <ddprobe@lists.linux.dev>; Sun,  3 Dec 2023 01:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170156629637.13164.6586020282569410577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 700ed494908bc4b9ed395d80f1a40866f7bfeb0e8b84348b9fe867d8cdff8957
Date: Sun, 03 Dec 2023 01:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701566296

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1CAB28E1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 11:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 660C2C433D6
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 11:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669548654;
	bh=8C4SXMfuIi+dsoYQ72NMbIGhfZJtpg4BJqtkAHbzGs0=;
	h=To:Subject:From:Date:From;
	b=lCkSrVN34H/KJGWtHk+6ktLZFteU/9baxWigVPyKgOfz39GjBadoTLVcbhXNTRfGS
	 bECxIYMJpg3CfT41w+Mvid+Jl/Jb2X4lFiiYH0t0ldbjoKVLeGFPqOssUZO7NA7HNE
	 rKOW099wCLsTPBU5EYZOEMp7LvBISzqKzI8mzhAQtKJWmfVtXNrip4da/6o3bFg31e
	 eYkEQXyxclMBTQNpRPBlYDmHy+iMPfBMxF45lta4QVbOovJKjSnscy7Sa4rigGLiXi
	 cj3NyDoGCKKtLc0Grr5u+GPESLiwt+v1IwB/Km57onpeLNq+MEBOFLYRvNTg8ocukz
	 P0ZiuBkcX5nFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5289AC4321E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 11:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166954865431.966.13364982834956604066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23aea34975a96ba30d033b2f8ef0d839584e2b368399c242227399c01a110142
Date: Sun, 27 Nov 2022 11:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669548654

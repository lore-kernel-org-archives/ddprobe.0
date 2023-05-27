Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD97644
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 05:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC201C433D2
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 05:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685167086;
	bh=gXUG6uQJ6cqEelfRzZ/khSeQ1Lx5S7B92/+i6Ehsgxs=;
	h=To:Subject:From:Date:From;
	b=nU8PJOmO5PpWLH/TmBgSgJ0vxBaFDmkwg7Q+v++4VJUWmtOj2DtIJgL8SJC8Y5Pge
	 BtxOE3nMzR5EqUh2mYDldxSq0IJOU2r4zN1XV9LcMeBRUj2lsr30IWhqMK5mGhIONU
	 74+y2nNs4VN6k5WUAfQMhCCpTRnbhqWa5Lqi++5MdU7uTaTJ9UL8XFcZ1Z6YdEib0r
	 OHYg82ROG28PO5LWPqlMuDvl4OL0VcsnxIgRLO2IAz2/cKjAVqiRDUIz/52/ZI4ZgI
	 1gKfJ1yWyjUjkOPY+XYvUfzmp1bs1fSb6r3aOCyrtCQziOyGA2JEkyopyiPIGF+Juq
	 9MnJqE5F5ytsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF444C77B7E
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 05:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168516708583.27007.16271040968982981916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be34f80c8ecff187fd9244ec2f86b078a8f14cb82df3d22be57d62b1c52af97e
Date: Sat, 27 May 2023 05:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685167085

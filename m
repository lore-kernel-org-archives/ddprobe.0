Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA25012294
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 18:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81E88C433D6
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 18:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667844054;
	bh=25EUb/oKLOw3RN7GzGr28va/dSeOOBjX1uZ8/70XQbo=;
	h=To:Subject:From:Date:From;
	b=qkgMfKbgW0qHyRxCU4qk1Xzc/HlLHD5RQ7XsJ1XmwvvsNWQ/w6kunlfv18+5kew31
	 GRe9wZ9ZJKgVya3YPbGoV/0o22kNb2VE/cOsXKkprNG6VWOVpjA+w10oOToQui2mnH
	 0rveo6L35Bg0uJboneDVHe3BRgb1Web9cZqAvwyDm0lA9V2pJFhUfzXA0VvN8xv8IN
	 1QZotx6hxhY18mUrw27CCB3/KYi4fUykpFqj8ih1APgqVqQM9UAJaRmL8/KCQW4kf+
	 lnkNkVj30is+T6HXqydfc1efPXXJRXtyAwDdsGYIbdIE04DpL5MYI3fnsU6zd3VQlV
	 2dypBUJhu2IOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60263C433FE
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 18:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166784405438.23876.13492723591396167072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62e106d0d16b935fa0d6571ecb0ae2bf56f07e4d8d8c466d131cea03fff1f0c6
Date: Mon, 07 Nov 2022 18:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667844054

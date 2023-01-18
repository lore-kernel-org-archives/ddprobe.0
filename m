Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE9478C06
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 21:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8ED0CC433EF
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 21:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674076887;
	bh=oEzh+tcpB3z1p5qvpCDVWrEBqmRrTCL7q6lYXhnofb0=;
	h=To:Subject:From:Date:From;
	b=dUZRutvL7hpAI5bacTPq6MIGc4SxF7/HTsGbvQ9OwlmpbacM3NJBDtpq0mMliaiHy
	 0u6isF/8Q4sfky1vcZ1z/3JHjN8QcdchNwVa2BOzMITZmtLgq0IgYYjrpDm7f0ZcfD
	 k+Xf1cf1cjZaW14yOw3CUUJYVa+fJu/JYECzVe0JyPWnjpDwhY/0O1XMXc/JdNL/bl
	 T0QMM6AmLyjWOkOuTo71tz9Bc/ffDC1r8ofLEc/rYaTCxAi+nANmbGsL/tXXdTG4Lu
	 NTypBe9hh9L6tdTDGO/TyLrJ9r2rw08NkR1fF+mXiXqli0bXsHlt/DWNNMtPn0GEeX
	 ytF1RKk7JaPAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D865C32793
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 21:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167407688743.10726.2283947642066457475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3cf83c2af113ff37c9b0e253e552dd3645aa2a801e7a9be63a529e7064a193b
Date: Wed, 18 Jan 2023 21:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674076887

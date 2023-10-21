Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 392E6DDA4
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 15:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K2Py99vf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93A9CC433C8
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 15:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697901496;
	bh=TDoZ+dass+e5BMDSssRCPxg4JYNra1uq8tOROCClhDA=;
	h=To:Subject:From:Date:From;
	b=K2Py99vfgNhebtZXwxTQhcNfTe77uAvBH9h/tUpLQjI0lHlgS0qV9KeL9jOL3dh+D
	 TcCLTsBBJGv0Td+8SuyH8NxTb6Zi+4/XbnixW7k9Jri4ZpHwJUR3ehlv1FscGfAwUp
	 in6sdZZXcVf4SKXLnLsBFSYJ0+h93DhKShehSFELNWUT1+RYHxxlBl7hiotJpcsuQQ
	 //yUmNDywQDvJQ0uYM+gqtBjM/yDhwUO7tOisn81VynfDEoT0iPvBO05ccx6jaTJKe
	 VzJ4jGqIzlB6aUMhQhvsj7CAu+dmdgqJng/SgmR7NEPizbtAUCvZOaMyKsj6EWWYrN
	 CTSqsknJnqLfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71951C001E0
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 15:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169790149641.31541.4599613359314489963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1df5c1c3aa0daf1666fa9db06e6f4be9de36f76b49bb198e037544b23917beac
Date: Sat, 21 Oct 2023 15:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697901496

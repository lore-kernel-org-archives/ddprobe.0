Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5796415AE
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 01:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0DE7FC433EF
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 01:47:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678758426;
	bh=ZYB6NLMN42l3bFUCsvtm2ijQzgxh0iyhaer7V4yf0ZA=;
	h=To:Subject:From:Date:From;
	b=aiIHXeNMYkM9GzXvUb/prqVHyxT/So13L5MFnlGrJUuCGnP7KEMb9nMABONCJEjcb
	 3uUNL7966BgIMFfwrj4oIpOa5yfDXveMXcEHD4+pvyTCNQkOjmsyZqySNpximBGl+S
	 1OROomy6TkodHnSb23ZNgDHNcbSJa/JyvOYul8TtooonIcY+Hd5vedoXf4nnNFU2nt
	 3mDY5xfEFKBdBuNLCdLdPjwQyWxaaPViBzemof871gsLJiXue6GY4aF4oeTvkTNZ0H
	 ipoGiCgi+JDU+IsZoaeQoVDt5Q+W2cb0rxrYxN+9zVvn26FN8QeUrAAGpS9oyj+rq9
	 6OBH9JBygQ2wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA62CC61DA4
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 01:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167875842585.11654.2272372175435252502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc115e4d6747b3a5584ec7cf053a03340ba15eb562d818730a98a88c6b05b130
Date: Tue, 14 Mar 2023 01:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678758425

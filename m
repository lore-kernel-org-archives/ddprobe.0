Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55A54363
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 00:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E22AFC433EF
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 00:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677543365;
	bh=P4amjuWVPi9hTH/MiaajbpYMg1mzbbZk1Cihr/VJ/FA=;
	h=To:Subject:From:Date:From;
	b=F12ASLm02hSutuCdRUFsqx3n9sastZOA3kkqOQAyOdbDXtxOzyF+5SuzkBMvVTVQh
	 hJXkI0CDimc9VOB3nU4OO7QdKI/bjEbWLON91aj3cO+Jb1fzJXQLejxIcL7yHSDQk6
	 40FkrhIlzqUjGHyRu25Z97QSlx99zKpeavizPGrXE8IdnyXQf1xUlL/V2Btl3EMyj7
	 sCqtof3menx5gk8Ts8Co9kMwBY3rC5FYk1akV+2SF2smrUK5XMZEJoogRgqXdZ4rQw
	 ZTA9EjjDdA+M/X8UMkjKjJKtV9ExdgYmQMcLDooprc7VL3SrY/duNcbBTI+TkMto56
	 bTGaraIi/fP0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1A1EC7EE2E
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 00:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167754336575.18065.16473830194573946990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d29ccd1cb2db46a92b68297e78d05930ce6327e5eb051be042d361efbdd3bae
Date: Tue, 28 Feb 2023 00:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677543365

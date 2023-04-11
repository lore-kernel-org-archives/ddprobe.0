Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7549457
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 19:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB28FC433D2
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 19:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681242725;
	bh=MEy7Xb8Zu6pEZo93x8kU6kX8tAkL/O5Hssa1IG/9l4M=;
	h=To:Subject:From:Date:From;
	b=URIu8zhgNxEvgraKYQW7VyH0VDeigYjGbAYu7/lynz+V4Nld11qDJzdNssjIeN2nk
	 /FP1h5akHGFl9srWMdcYXngSr8yB3EBBASscGdbLkDbuqKLHKD/ULZYlKRrtL46dda
	 L6joHwAnq3/q14VY5r9PBEHCW1PD/jYwzSMpDAIiJyXKCfTMTdZDPjG0B3UvJUm+r4
	 eGzO6DsbefcJ9bk+H9EeRJb7ee1g0XfdVDp+/h8MqH8VZ7bbyFoRIdrPZqwuFrifhe
	 SDtRGKOWRWftAe294ChmS+1puWjJEz0fzpwZjrlgKJp1B+n32hj80ab1OsHq6PrT1D
	 v/c7SAgUjvozQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE99EC7619A
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 19:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168124272577.28136.11393208304555231438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bf442a96397be492364ae86b5e2aa7a0d0f3ae39a99ffd120a376e7970a1b25
Date: Tue, 11 Apr 2023 19:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681242725

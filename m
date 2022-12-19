Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5FCB1398
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 13:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B97FC433EF
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 13:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671454887;
	bh=DyBbdOZ0kPwI2aNcXkL0rhvDUkwU1uao5ktkCIBozcw=;
	h=To:Subject:From:Date:From;
	b=Wh3fubfeUmHggMNpJ/AFjFF6nbbKQ4XvRgSr6y3OIsqVnuzyrseAk7o+9/50ExyFt
	 ZYy5zA2qLXeFX7aZI4WcU6bthzkuGwVOl42ac8pf+wtv/YtbofrjGHgtIDHqE4/gwz
	 /leMNbd7UNHNRguihM/4oJzeLoxlhXWbvQJHzAeEIfzd2A5JON3E8cSt2DAK6riM8b
	 2JzoRw+CzV020SJpKienSzb8l+0uolD4vz9rZqtjGY8KUSDxQAO1IO3mvcD2ZXsJZP
	 SzCq01qvxOJZ4Teft8kbf6JVrV1uE8atcEezHyuPgkC1ZpWuUyMxhlpwD8Wo7eEtq9
	 ogAwGNVTk8B0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B857C4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 13:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167145488743.26038.8032138530895326635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa55e70941ca47f78d7fa078d6c71bfb03088104ab7fd52b25cc74162357e23a
Date: Mon, 19 Dec 2022 13:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671454887

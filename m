Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D7772F46
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 10:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D59E4C433C8
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 10:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693649048;
	bh=fBfTm1tZSbCDKGLFX5VNTXZ80rtePxsZKFjJu5aU5Ak=;
	h=To:Subject:From:Date:From;
	b=LJNEB3REQJDcNXBW9VXQWcX2DySDuke7jzPwc89P5L6IZYAaSWYh1unoAPZgbjiB6
	 2wXJgYYP6u7xfkq5oPPJmYwBtDiqzjhaCWAcWh4t6gZXy02uqqDBNTTkmHVsoSA8bE
	 3ZmopsraES5ZWqJMlzncQlrEGP5PuuapnklTdGAgVki5FFfdITAtTLfRWu+eLYQmun
	 8k0R9jgZBfABjOuUAZCEZ2W9eWeEWW2LQpGQBqaNTGjkhgY3koCYeRH0WhJKvsq5VL
	 7aqA6syuNc1jhy7CYQrOlCP72fu7euG1QvndFpC6hx8rsws1gc+pc8qafUT1z9hkpE
	 LWy4J8QfejY0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6FC3CA0FF8
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 10:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169364904872.25877.8197233526693018685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e07f991c24735b797619cfea99403aee0519b66b194036a85565936cc7bb0d3
Date: Sat, 02 Sep 2023 10:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693649048

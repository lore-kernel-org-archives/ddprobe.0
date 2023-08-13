Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4748515BF
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 05:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6055C433C8
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 05:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691905388;
	bh=U1GredVW3nEwfhljz/fH7fqqDjas3Et4koXAsd/CxIs=;
	h=To:Subject:From:Date:From;
	b=PbbuCQnTtpQ1tl/HXjqz6JuD/9qAVY6uj9nW+buF59K0PBaeJtvY2E7NSrLaSWT8v
	 v5goM9nVLEV3HRE+BM8N913BeUrVo4QsC4IyYUxtEY0HClt3hR9Sd5/lCWWqYMCBY1
	 r/OgcoSSGI0wYKTHObylHKwvgtb5J8DDm9J7fZt87kcO5bJfhYjFChOs7EoJwWIy1I
	 5Z+ArsD1+zvAlSIFgotiQza4eD9MjH7H/1P4MjS2EpZ45jUiXyoHFDbcx6gvtPZKMc
	 sITIxH5vhrthnv9A8/gzgS+LF6Og6I9WZeUBJGaMK/gMIXE63uQkz7/6hp0WJbSe2X
	 WLO9qB55ukgQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5F25C001B0
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 05:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169190538867.27566.1361720994218930913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0156c28d331d0917ddcab0600026c029e1e3adbcb8c7dc0b91d187b930d70843
Date: Sun, 13 Aug 2023 05:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691905388

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC9387F7
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 09:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 963E8C433EF
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 09:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671268287;
	bh=dWZF9/lluP+VRlwBy6QuZDUX2fBQiBadw6zQMhCW17c=;
	h=To:Subject:From:Date:From;
	b=sQGli410TLsatFQGTTFF6Xz7WjqRiOOLrLgYv+2FV2Tu8wxOw9xp0UpJaZLUtPxhq
	 /KCMRjLtT6HC4XBOvMjg9hl89H0jJ8mixJ2vTEWbCB5QaxqzwBEaDRKnQZVwN77X1i
	 WIEt7cqLs5CG8Lu71dD5NiLAluxPE+T6PPcLGgFocJYufUV+RzNTClKUSeH9OyRu/K
	 KfC+5OMgywlRABJwlmknYo6sbwPzmTDTzSqvCpdwgTtYey4TQJUu7OWJeMfUBPMzLq
	 XjrFrSg2bYu08tJaGC0HpD2hLw77eSS7d6cY4du5VK4iVQ6QnI0/Z3c9z81WnQ5CGr
	 hJozYCP5dp+fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7532EC4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 09:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167126828747.11748.17280266320094781146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63f79290f090c92dcb11de5d7dae48a347dfcad43e7fc32f17fc7fc08bc644de
Date: Sat, 17 Dec 2022 09:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671268287

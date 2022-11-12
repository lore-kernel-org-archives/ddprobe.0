Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D86531C01
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 15:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75652C433C1
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 15:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668268254;
	bh=oU9lpYpCh95LZuryR2+/8ndTmx3njVXq2lSr/Q/AHNg=;
	h=To:Subject:From:Date:From;
	b=caO1FUN0KlbLG1gOiD/MzRCzOhJgJaMEwC0CmoYwTwLIcei5/G49w0ViIHIYdh8YQ
	 JSepSXQa/rSDx1oUoZD7K6NnVrlPuhHQULaMIgPHmwgj/dyrC2ZJJz80S0neCAUl8I
	 M/YaWXZGzExrhHl2EzPniSc3VvdggeualSGUifzROcffxwa96x4jL3ZcA2j+VTKv36
	 IQmS56byIWJmlhj4vLQmRKl5ZYt5u9wglmPpm6mpgJqUpcHjFSpAUHvtJPjwRfm5Yt
	 Ka2aTkzQ9T1EWOGBCOItD4atkFZ2FuUJYP8Jw/yKztG+fO/rHy0reBa01nRYDL0O82
	 ngwX5FjeurDKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57CD1C4332F
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 15:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166826825433.21427.7000057979929975344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7f8ac0ff7a48dc055c7f8aa1fe68fcd18fdba11e319362b66faccd2513ad4f0
Date: Sat, 12 Nov 2022 15:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668268254

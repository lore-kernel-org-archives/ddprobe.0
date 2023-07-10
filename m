Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5337C13AC3
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 17:07:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5B77C433C7
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 17:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689008828;
	bh=FwGYbaE4hSSN/P6s889jtXiZ93cgN2L5plYIhrUbENc=;
	h=To:Subject:From:Date:From;
	b=a6i6F7EZ060uTngeiPvNYlqsQ8t6qoqHNEQvxB21gEiG6OiJGJyPOJTqlfjgOuBgp
	 YRqFJW0yZk93R9nuohoqwgxmErLyajnKjzepc7fceKcqydH/CgK81NzU5pH8ojwZfV
	 Fg3YQOZoaVtntsJ8ATXpzCieWBXnq8c6ODBR04lc9GCWWVzjw0ojWy7f57WrrclLDB
	 AF8LRa21bop7cuem3KxFjKlK5dEqKtVSb41O5qK6oxy+s+EOhYl6QI4lKzESvcbzrQ
	 uauEzbaRlgePmWptNucbdfXS8KFFaWnjCv6mIRyPkFHVBDrGjQX2DhgV/hc5dmskqf
	 NT6T5avSBl2ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7FEEB64D9
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 17:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168900882870.16476.10363038675489205339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02b363513915ad68bef3f0457bd5192657823b3b57fcb8733db9f5bb8f521140
Date: Mon, 10 Jul 2023 17:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689008828

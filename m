Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B37753D65
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 20:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FF01C433C1
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664224253;
	bh=/kR0qlnQWTeaAbhmmen7G3aWLvwpuK7MK9L0dqJmpPA=;
	h=To:Subject:From:Date:From;
	b=vGeCvOghbDJEpgCj3Z86imDW8fBPhjmPuQF6MYM5jWzK9wWlaCgvPO+gUBIMB41te
	 vSZLXAhSxWcVuFxrI7ZK/OAgEsQ6a7njJxPHXoAmPHXaOB7+jqm2BHMvNePw2Fv4kG
	 n1IvqwIPfJv1LoX4w6te78gw4UQ3nHlw81N+qBtLx3chgC4c2pmS7mscWdwIr19SZj
	 maG4PrMxy2JnuHwlmMYmGni7bZOPixOrZzdMk7gakvkt8/NM09E6kci7GGvwHPTCld
	 TAvw4fHrm+GntPxddhC9XIHGahU5UIsUv9Jc0cFyjTWVnLNB2pBJWGF0HDUU8og7C4
	 cfp9YW1IV6Ntw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56920C6FA82
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 20:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166422425334.10940.7465618588803885674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dbe943a0aa5f86fd0b9b9df83e0b5a84f0197de97f9a0a7e7afbd884d0bef72
Date: Mon, 26 Sep 2022 20:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664224253

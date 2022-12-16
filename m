Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6F088C08
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 23:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F08BC433EF
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 23:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671232887;
	bh=d7Y3tJgSS398SmmSFO9CLufJmh7ozZPKSC7SV+OrzzA=;
	h=To:Subject:From:Date:From;
	b=SvG0o+ex/ieOnG1wiThSdfOIypioGVk5mJ2ZBL5bnoVkuNBpLLS7cXq4HlR3mLtVN
	 tEfP/e5vEr/2E7oQEYS600JqADw57us4S8Smpqfr/PpX3z7cDOPwB9ZbGJp4bD/b2y
	 e1PCZrE4EmWPGlqRtZYEgaBvq385rMiQ82P32t74JwiNj+7IFYx3uZzh5GT758X59u
	 Si6y16WOU12jgbfYfTe99iQCAl2CUylqRGyFSama4TnlpPa3W5BpfFHpXkkCfrVSnB
	 BTRHrk4UlJFZqFX4mqYQDmjbg7efAjj+8GfXcOswUYi4+fg5UGYBVxyIjvX6YSwrTd
	 7s80lxSY8KA6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68526C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 23:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167123288741.7503.7411882394013513896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2ea1915d557bcf22ea68d30516b6990f6c9484dd577b8c75b7b37fc8a343c63
Date: Fri, 16 Dec 2022 23:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671232887

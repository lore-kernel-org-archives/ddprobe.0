Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBB811FAB
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 09:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6534DC433D6
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665307253;
	bh=pzZQq64jvSV2HBNE/z6nkpNo++D+TiIMQGnsgxv3W6E=;
	h=To:Subject:From:Date:From;
	b=pKVua2v7f3cT7rTWRhuLQVId3pSljntSe6IWywKLD1rScfW0jGgaSbcD567jtys8y
	 v3DUZyyaO4LQ+XBjJm7GXgkx6fJaSGsdMSHJF56Arvt5WW3GLWVAJThtYFbJ3pLuKx
	 qG63dIQU+6fhdPLFxHRquLHiozEap9zVzneRrh8TzPUz9VOH8eUs/zly2Ed5fGOHxN
	 Kt3+aKhMoKVPn2CrswnjCaOl1a0xGHNdUX++hCorHzfqZCJweEybfPfE3v25ghlXPL
	 fd8dbaRtv9kCwVR8fLaPs7HzTVeAAj/XM4CMctF/z43vAUoQumJ1bFNKVtC3+cJvHH
	 TJXaEefL5dNpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5034AC433F5
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 09:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166530725332.31836.2453699822686743321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e771ff544f8c04cbca4a920cf20d1f9ef345c0b695150f0be63c676abe3a582a
Date: Sun, 09 Oct 2022 09:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665307253

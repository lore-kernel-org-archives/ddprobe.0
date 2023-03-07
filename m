Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2837C
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 00:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6F08C433D2
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 00:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678148945;
	bh=Bzj4hxPNqGoYW9hFqhO2fazhYvEvZKu5FtJ/e1VSQ1Q=;
	h=To:Subject:From:Date:From;
	b=WJEetqO8znU+9qs4rokwKQXllwNUPcxQ+2dJ2oCqJe4JkF2hGdcm1fMe0iVPcwyfA
	 LklsG9hpl+DicuKda3tsuaTW/JY0n+bayiDNfAtznVmbkVedPkolUtfmn39aypemgY
	 ETFjZD4AxGythygN2smB+hF3bM+euSyNXbRMY4b74YKaV5GicKwnMAt8KCY2bQBWsg
	 nM4ZeXo6dnXtAJJvz8YvhM5SY9F9VC7qkTwg/fwigBHStAEyOysJkcArHUYF6NWw0D
	 aXgmbG1nr9F+/UnQQ848R9RO2JJQQJEmkxj4oHXOm4uHuG25g7TJlqAfO1W6RBjDcz
	 MkydCGrRMMGOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE6DFC64EC4
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 00:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167814894576.28954.4605115738817031310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3e9c263175ea685be68e4eb1c0f61f83ff8f2bcf218466d9ea58f86ab1dcf5e
Date: Tue, 07 Mar 2023 00:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678148945

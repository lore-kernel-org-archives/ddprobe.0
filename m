Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C6CF110A
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 18:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1664CC433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 18:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686422526;
	bh=s2h/6kgPmYoF9Z1HSxXqa4GsaqWarfV/NYS4vaeesNo=;
	h=To:Subject:From:Date:From;
	b=vEnrfAjvybCYd1LJ6Y9nFgPaaHfyXZBwdghagcwZLJw/S7H4/jW3aVBdhiVuIbVN8
	 2kcRUwC98ol/+RZ30rsPh+iuULsLOMqAEIMhraiESFJ/Oo57ljv7AMyVNfTgQ5fTgW
	 ZYtfJVZREwnKVvmisN1Y8UXZqvm+OF69LcJFnFTOSXIG4Jdl4mgQzZmfzMJg3trdmJ
	 4CAFGInyTXaBQsONSawwHnnA9Ah0EQCMnO7BMf+PjVAzRdKj2y162Q0vHZDE3dS8RD
	 wdLapk0G24bnwgejD9qFT138FRQNQOEZsAPAZLxunMiwKxYeRqmSCpmuYLrIOr3Mgi
	 Ca2+31ifE41mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7B6DC7EE2E
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 18:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168642252582.15839.14583941111509391579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d1a941bf2612804398b38a7206f62182c5e8b74b598ac6eb4205064c219ca97
Date: Sat, 10 Jun 2023 18:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686422525

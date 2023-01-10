Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0D82A92B
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 19:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9831FC433EF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 19:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673377287;
	bh=XOUgfD2HbCEf6eKd+0v/vVO7PHkW7heY9TxibkKN4rk=;
	h=To:Subject:From:Date:From;
	b=XerG9AxQHfxgS9tezhOTyaEOr3/KEDWGERpaS+3807u7GMlWtfaRMTytmKGPAFVOQ
	 GT6y21XiUWAS5TxO+O5herTN5UJax4nHaJTwTCy67YEKjahyTIaA2gsaJFcsV2yKSl
	 wJMv81qnWMWSAZUIoZkFS8oY9uuV0bld1kgIU+cxpm2sZ/CBVQfbkkXf/NNDVGvnNf
	 7KJ6ylYfDUuY1qxe/gYKY8aXVUSoETyECfiELMZKVhO20GnWbyCu6Igl3WT01uf6e8
	 BW10j6CHWGiWDmn/IvuYIiyoiKgOVraIUkaakbmmHXCdMjk4cIcYWe/QLrj1fOZbZY
	 XyV0hAEriLvng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7301AC46467
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 19:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167337728745.7752.5596598387431151925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 834f282e97272cb77d1c16fc05c590908cfa43a443884a8ad6938b8cab29a273
Date: Tue, 10 Jan 2023 19:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673377287

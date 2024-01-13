Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206D018C21
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 00:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BrheVt69"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 854E2C433C7
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 00:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705106296;
	bh=Tp8AIoq2guoz1CBB9UoFf5znq3FQxk58Ml0k/8bPtc4=;
	h=To:Subject:From:Date:From;
	b=BrheVt69au3QdL3IbmWWZQn2I7/EcT2QM5LKHK91zlpgIHxNEvEDKlOd2XWPyX/Q9
	 vWndnCiUd9sDWcCUQJzrtvqCivEDDm3wewPtLQEir4rhZEO+nGxnaKoj9DZ+MXvyvd
	 TZEcr12JIWxAo4TE//MFrGySiQ1COYZ2MTUaSE9eK9v02LtgPYGYUYOBdKMRuILn3P
	 jHhMWJpmvlqu/VmYbfCUEIMg5WwDlPEL7qOt9lXP61vU7HYexzTK9GKnYPoDHdhAWS
	 Ad3eWDmfeTkUVErbN0Sfp8QJlHq+O6qIhMcCsErXcZNT1RHK3MylhZVB+Qo7RjTQCu
	 uC+nF7vF9rp5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 697EEC4707C
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 00:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170510629642.4171.12852019603993987987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11625bc33e0240cddd4a3c6d3acb492ede67af181e70bdbefef109bd483be073
Date: Sat, 13 Jan 2024 00:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705106296

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52C577C
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 10:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 080F4C433EF
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 10:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681468926;
	bh=Ay9fwk42xpgtUGEcQfBY5YgXsXzX2ZcmEivgtLOubao=;
	h=To:Subject:From:Date:From;
	b=R+Uyb5Fh88wAV7ICD7j/wJzv4rEATrl0O9BhlJn46EVzvwuEZ6gUzhwInSf5eRKoy
	 QUAn4WWivykeZ62Xa3+hgNkV7NBM4KdJ2ZvLDKNnOniqdq8GPsEcs29sVHSvKmgsaa
	 EZiw60aHHGbhUYknuhIMk3Xyk3uuZ9xVY+Fic1fNGTdC2DF8cIXU5j9QFlqmhhnejU
	 DcB9c3MBF3jNAj+Kw7h1TbwRvTr/pXIDlmWkQ9PP2zAcC+j1hADIfShDqP72DIKiF4
	 OoLxtmDt531DhpmiIgsx2zA3AuI9B7lB2MUmlszEIR8w+LFWCacODHa2RTfIDqqgBY
	 s1KbkzNplSQEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6F7DC77B6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 10:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168146892586.5459.18082823514427434270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc34f5cd208e0c5b1a06a0f3ee2e909bed5cfe255f7fa31f5153bbf08936604e
Date: Fri, 14 Apr 2023 10:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681468925

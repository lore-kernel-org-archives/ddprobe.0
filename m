Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57387371
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 00:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8183C433C7
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 00:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691715188;
	bh=NmCTS8Qz2dZHqDB0CJzrl3zOeGlvEUc6vPovUxsR4po=;
	h=To:Subject:From:Date:From;
	b=RL5aMHEUABO22SOGRstQO2qLXB8KCy69nIY32uvpdu3MsoeOgkGYoOWHaEEdqsSq9
	 +xKd4Ro49YA6kZQlx708BggO+f4UrsiTjJITsW/8BSzSnr6arWDlZIZ0Zsm/bWtbwe
	 hzIfngPqOyTibvRff+8ByapES9VEJtQd7J0mxBYDcHwJLNrpYc9A+OKCw3E9fm0Lf+
	 nUbOdhDR7PoXyiSf6w6xbRoca3Xwg7Fef9ojuVUMxpumLrBMAY78tuQH0JmCFS+8Hf
	 PsfF50g8Rr9zm3KsMOz1PzJ5dN6NHmKEo+ga/kFXn1RbfAw389DFcu1jUz18f/9yrR
	 zwlUJ8NJbGolA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC42FC001DE
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 00:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169171518868.27664.4411883657379559308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 164432835103b19cd677dbc120b8d2512543d241a50a27324db3cc7ffc7335dd
Date: Fri, 11 Aug 2023 00:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691715188

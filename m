Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAB4FED2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 07:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87D17C433EF
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 07:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671433887;
	bh=zMqusZVJzBlcTAA/Aa/xVb5tk3ozopvY3VFjT596XNc=;
	h=To:Subject:From:Date:From;
	b=TmnLKtshoLILM4Yuooy9vTitifP5f2tB2pYSx9DA7eMCVI3O/6Lh2ww7vR7b/U5sB
	 LriaBZAhpTId05nYZ8eZkzYNiXFE1vh6EL7HZN52EQcjgVG0eP5aZpOkGLGIOJElB+
	 c6K5bVnhfkkmbmnq0Q1Yneqg6y5TtoKeyAphTZM/dn/4MEWLYmui4aOkvNJjeDsTBR
	 D4cfEUbRunBMw6kWP9i1PpbkDZcxmBT5jtDtuAC0QMqjGztvYHqO/ESXIRHDD4N21S
	 0y8AHdhsgDV2okXqNnaJEfiYuJrDoxDIVaq5gGzblBiN3G6ezjZg1yeK+wBhnFKG8w
	 8GP3az07emgLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6974AC4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 07:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167143388742.29666.8321740103085157053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a216925bfdf893e14e9dda9fc5ada39411b003a965a560f7fb1b0e409478b27
Date: Mon, 19 Dec 2022 07:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671433887

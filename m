Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC8BD23A4
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 06:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67A9EC433C1
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665384653;
	bh=JASlLGH3XrbMGHeezgyeiW+MFqQE+IYhkJn3Qb/MTQ8=;
	h=To:Subject:From:Date:From;
	b=p8QJtn575+FOqNxkGZmD5dXs3S/+fL0+6QMbV5TE55Ss8Ac1D4Vyfotw7OwNnD1zn
	 cDQY9rQP4JiOpvaeIlYrJ2giSzO6Cf4m5AykaWoTT0lddmG1dIuvI2ZwdXH8OWL/Bo
	 5zQY69JhwZoruE4u99iBF95dtURU6mcppx8PVoXLHGBQhP2oQ5iTS8qwQTAPEQKSRC
	 h4V6QxZ+8KwFVEAQZpYq4HCmwOU35zqbgYaLBYu8o6UM9IX1Qh2P7KCaJVcHB4vArR
	 nAoaGJvhSIfiE0RRHcQ3PMJUopR6B/qTt+cVFnz9xKx4pELWY+/RdF3kteF6oMkKDv
	 bxkFjI/VtuILQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51B4CC433F5
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 06:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166538465332.14478.5963363118684547802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b71af8a020d6dea9cbf2fd3d5cf4e44845ccfe05a923ccf5e4bb959ae1a44e86
Date: Mon, 10 Oct 2022 06:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665384653

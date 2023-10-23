Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFE8C11CB7
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 14:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KJ7RvQWN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D21EC433C7
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 14:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698070696;
	bh=9gkZ562Sg9eONP3KHbazVBXeLoAPlRYaa50Veyz2UnQ=;
	h=To:Subject:From:Date:From;
	b=KJ7RvQWN2lb1Fh4Yl10U6C32tIOzqUkYQiXmg3XgF0v4SkespoxwJN7pS15a7emzB
	 M+zT+gU0hCO1puI36YLDVwo30HZjh477BM71xFa/VpfBIzit5BahZVHQAvZvk2WwIB
	 treGJfjk+3Jb7K0VVaXky7fRmrRdGThA1DWhq0FGsha4HowBCd/AbRMnBs3cHtbkp6
	 yRYYilW1yp3771D++KZ5kg+q/WwMebS1MUPT3ZLWSdGwTFNz7II3aoIKUl8v6Agb6X
	 0XAEwzTWUX1YY5ezvi4DjwnxgTIvZu9M7Wl4fCs+UFGKj+p/AtXvMbwnnwHh+k9zVC
	 PG3u8sn2gb0Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61229CDB474
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 14:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169807069638.24179.4606256693685929564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68ecbaea13d329d440cc7375eb29be977fe191dabe10d7223981e94815feb051
Date: Mon, 23 Oct 2023 14:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698070696

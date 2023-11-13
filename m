Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08A2921109
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 14:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BZPJXwtu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A8F8C433C7
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 14:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699886296;
	bh=yQz6dUaTMBJxxGZHRLuGU4RIAdyajCUfo5R1I6WDLZA=;
	h=To:Subject:From:Date:From;
	b=BZPJXwtu+97zcchH8ltsnEnOZwsicjf1Eem3V+nkkjQs7PLnCqjA4d++A9QwBms3k
	 3mna1KTaHrw0mQJo2VWaJWiFlBgPPTmsKO39pufyI8CkcN/bmjpocs2H3dwWfNWZJT
	 th/Hb3W1Cw6TQWderNZkqlOTpVEyzeVOaHfxpWIh/vRgbVORsXCwZG/VSUScXUV4Vs
	 RiqAlLIp+iRIug/CVMX/nEeQOy7sa2IWCOdGod9MTg4eYFwH985xXA0TBz8Rlae1fS
	 0hCGgvxZ58/QqaMyyTApGIjopswyh1HlX15PbEtKllXr1ZSORVKqbclqLdNqTnZKsg
	 1YU9/yyn3YuBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ADD3C4332F
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 14:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169988629639.19857.14558150381696670389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01036deecd2019caf839111df06600861c72bd509b1603c6514318bbf91ba755
Date: Mon, 13 Nov 2023 14:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699886296

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3600D19B5A7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769967234; cv=none; b=thNR6TeRU1a9K9fSALMPxx7JEDfIC9yrsr0ugq2HZKPuiwjU04/DpPbkXOGQ/HcAzCmAfkHQx3XICx98rUefR1PEuat5vggKfYyKN8NGeeXaer8ntxA+D+tqxRrNZrjf+TwLarEA+WEPuQTCFNKOrhzyo7pl63vRss781tx0CdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769967234; c=relaxed/simple;
	bh=aa2Os1/M1JFze580vHrw2CEQKP1FkmEzu5oVcWt2r7o=;
	h=To:Subject:From:Message-Id:Date; b=JkZt3vFU2iOUCqw+QenzwRC+in6aLGRYbfZFWzAORqoKRotEIb1znpIH4UMsylnUrND2YONKVdckv8Y5mPkYCo3zB2ixrVa8kaAD5rb71THDn2JZh1CmzFaS0J4+a8XU9vFtBJudYLVTKGKPpn5YX61jGu2B9NWfuN6IA3yPqLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V+ItqI3B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V+ItqI3B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3954C19425
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769967233;
	bh=aa2Os1/M1JFze580vHrw2CEQKP1FkmEzu5oVcWt2r7o=;
	h=To:Subject:From:Date:From;
	b=V+ItqI3B/Ul4vPWMIfHGr40c3lTr6ObgAYL6743r4MDZU+bS/iRN76z6eQ7HAdb8V
	 0eG4aTnCtPW/WmHRebOJd/KsIAMZTG/y/JDpmBVDyHTjXdtEPLZZuawTXkGWHUj3A5
	 M/RL8SAF85lmbt2agS6E5p5Ls3nb6+n78KMh/eY3AmWZ2j4AkPI5qXK9yH0iGge7Oi
	 RfW8HWcu7iE1Mml5KwYwBqekhJJLLtFcT1fuvdiA6m9yNGjcJunMVk4KWMvhMs3Pz8
	 IXiZ0rhPRleHjbgn5DV9VWI9JtlmBOjT6j+3gOOo6Kpf+P/TVIKqaVhdI5f1lAwEGV
	 vKFisQc7iNuAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ECB1E65298
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176996723360.17561.10278800797923841323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 512df0cdd8164837c09e2a38158542fc224be583e3533e821760d138d542049c
Date: Sun, 01 Feb 2026 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769967233

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3128539B
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 15:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F35EC433D7
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 15:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668439254;
	bh=9wtNt2suk/evCfg1zjOpo4A/Yd88ZE8/nrjffBBHiFE=;
	h=To:Subject:From:Date:From;
	b=gqamKNK8DpmSukAH+eki6Etl0/SCDyw0hpZZkE4QwawmoeJBdGe/SFyEhVOyCuJea
	 i38na6NdsHpY+0qLjdTbTAUFO5F7A0OD0v9ubmCdn7oMM2vxsd0SCWgcZ0KFN8Azwm
	 1i9im01+RIAOE8xBF8U9P0UGGgjymlbRVwCI4yhpJWuTX3PX8PCNIVXXKFW2HpbK0n
	 Y0068KPSZljKCz70eQETSo/yeMWjxEituVVg5UIlvvare/4L2y23WojOjnmILGsgSA
	 wJclKpateoiV9hnURKMX4pCbY7l0eVFIQYj9DUHBWkJygYDC81DGUubfWncCj0QQ/7
	 rzqKO873XtU+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51277C4332F
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 15:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166843925432.5744.10128442676736649322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa1e1e5f733a7a492a87ed073992ec3cb7b57fd780de2b041495b222b96c97b4
Date: Mon, 14 Nov 2022 15:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668439254

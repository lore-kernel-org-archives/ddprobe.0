Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19CB2320CA4
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755701395; cv=none; b=YXm8ys7SaOmU4GAag6FU8Yl3RK/gWTex8GiGJZ1ZnPU5gJ+5v2DLgjTUsd/B2snwMNCuQT7I6AVcNS1CV3gpIKftDcQQ/6FNdwY2wxsjGb5vHptrj4XHt/1aPOwvaCWTWfYUw+i240/IMOiA1pC9iaeb36F31ziJLhVg6e5CB3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755701395; c=relaxed/simple;
	bh=ezEY+c4EbBcg+6lEpUna8icMqfGwIpQvdRHEmJpgPOs=;
	h=To:Subject:From:Message-Id:Date; b=pFwGz+AVHscOkkLrazlPVo+wf1IKkfiQ+QODcpUnlrwil6XV36qggBSO9M0rQqAxNionujS3rMqGL/5Ke62tHwheHbd6pzgHeHVgjfh/8Aj1nubfXFbPIK6borE3d10oCuZndZ6XoxOXEtsOFI+EOgs02elfKx/WxWcVeBFNKDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ul/SH+Yw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ul/SH+Yw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E680C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755701393;
	bh=ezEY+c4EbBcg+6lEpUna8icMqfGwIpQvdRHEmJpgPOs=;
	h=To:Subject:From:Date:From;
	b=ul/SH+YwruDmJKUODmUOu7Hal9i6gp+xZhTiAp7Lr+FKd22nSuxR4FX2AhZ+Vujmz
	 EAKAl1C/B5zLeJaljTyml3FHSkLfW7mZck59vtdYXd7XijJSm14BOTcE6lJiaD4DkY
	 TUWFaucPBGqbPwDwJ/YlPGfzQ0x4ZUVxKDYN6Nh74G7q2QVv3XxB8EexRpbwR2xOFv
	 R2HCwGWKJpIDPj2xPC9+vhZfHgnBBB8V0rTNZxoXaL3faPdN0AAPfsMh/EFp1+Xwqa
	 JxbHJ6XD7G2Zxa7KojfJO4qP/5I3uXdb9jOpnLK31nDQqwr7Wk2BoJ89ma0yYYyfT1
	 iuBhtTqCh4fLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F603CA0EE4
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175570139358.16248.1834232525714326909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a7756e47a3f253a326482883ad0aa083c6a508e065923187ac05b165a3c5435
Date: Wed, 20 Aug 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755701393

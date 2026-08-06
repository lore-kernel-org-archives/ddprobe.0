Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF473B840F
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786024834; cv=none; b=NmYqBmiBihno4UjVVD8KELktd2p/NHNYpvV89mx7lj0+gJMaNLDtN2lJG6FxN1LzoDGBu7EKNcOWw2CAJwKD6x6SBJDLWhDrDLQvUXixzUzYfnH/z+aBI/aigCWUWB5r8+ZkwK2/zjEgUojB1SBiQgazCYUYLAqQmVPz3guMeyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786024834; c=relaxed/simple;
	bh=5gYJ8bjt3J7orbfCZ4/N+b0/K4lWMn9qhtpwBwdAttQ=;
	h=To:Subject:From:Message-Id:Date; b=ej+Wdn3V+8+Hz1uULV2B271b7xbptokLk7sqQhC1iOdikMwB/gZRs6koCY6uMB6ZOqdou/ISqUay8ueESuJ8eoHpEU1pUosZVUE86oE7bOhXKEzE2/8xh7au/bQ7YSQ82MjCmHvOlhJWpZLTo/GMdPtPVzlhNgbQV7BcpqxZ5Uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RLK3H1jg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RLK3H1jg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8FC3C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786024833;
	bh=5gYJ8bjt3J7orbfCZ4/N+b0/K4lWMn9qhtpwBwdAttQ=;
	h=To:Subject:From:Date:From;
	b=RLK3H1jgr8cRLv5HPdpVgrdaFMX/99bNkq9je184oI0fL2LnPuSaMWgrwFaru5PaF
	 O0T46HFrZ0MZ5uT/ORVhcEfQiOllZzznyUlrOAHrSf+RL6xRvSCfFPaiARt5TAloFw
	 LagUAo98wlFcodBjTVp5hbC+BXZoCzOEQ/8p4i3VoVZ0+4xupSqQGE1q32Q9f77U+H
	 ozVSsVHa+5RSePUao8MSNdmS+APwkFUfTvwZZTiVa/eViSKBces8f6Tl6p54V87Eb0
	 8K9xLbVa7paAP5yCqjcub8ePfqYYzxnoj6YOi/W4bqwqutg03wNxNBiAdFRYnbNsGm
	 8LxNdQb9pZncg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2C63C56208
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178602483371.9024.8800447331872183016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d47f3232aceacbd8727616f8410c70a8e2569ce40591656ce6dc2d420ad8003
Date: Thu, 06 Aug 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786024833

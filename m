Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E0C765F
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 01:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DiWphgFI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98619C433C7
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 01:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698802696;
	bh=Oxt44VKvps1Tk5Aq/GbVsZwZi6wXrcQIEswdsRpiiKQ=;
	h=To:Subject:From:Date:From;
	b=DiWphgFI8lN7yGKDtnkoElwCNjf9B4vaX5AYqxa+3cH1EVNuptdklda7grbSbXy7k
	 BYFLrnyToaaURAhDGjRuiYyDy2h4k/NoBcRYd+Ehx0jQhz1FDRr13Yl90KJ1TrddQ+
	 p0Cj0WQNQNvWKp7Ipuzh3CkuldYa8ssWfwVG1sjAJX9cP4ehyupwYzwhyGS+R/7Q1j
	 rhDcJf5aaznttAWZ5mFB47bWR9INuxxNKtBVp92Ade8b8F7396XgLiAUK0GUVgC8H6
	 bw+CE+L0+K2y6+bkt7++bqIC1PfndaWCBoQKnQyy/oRVOjOYPRLFHiQNwIjCM8HSqE
	 S9DxiQ/8eKOkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71CB6C4332F
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 01:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169880269643.6618.15759124687562026402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20e9b722bf459b0f7cf9e6ef91be1d07c2bcadc39dbea01189afaee2662611b0
Date: Wed, 01 Nov 2023 01:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698802696

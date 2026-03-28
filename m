Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EC0938A70A
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 12:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774701294; cv=none; b=R3qLQyQA07XKN+IxVVLpaCRkBzq9zEnjZLv2deXlG2eDWB9Pv7y4Vk2dqf3J+3h+z7tciPV/0hflqo+VNsIA1RaEdpUSsYgcT9MjQ6Ou7kdoFVEgK7h8IfddaPxR29xa2rbnSNjd8xNtM1t5yeY0lHgukfxvyY3sNY6JpUpq5ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774701294; c=relaxed/simple;
	bh=Hy7xlxhWO5ro+vQhkYEM/kAf+fZD0eQSU0Knhh1GU/8=;
	h=To:Subject:From:Message-Id:Date; b=Ek2tqaAaCpKGRqDumus2w8wQbF2z9w7sTkjUv3HtotrBbdrriPsoEvI/xlrhI6KTcuyVp1SgHf+Ke3+gTWHw9ChoVz+SB0cuOUhkEpzm9sYiF00my/5clBZP1JKQtwSOcU8pZoz5EDYJbixJgjxvEHQhpmcvhJ/bu/FEA/WHIrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jakcu4rl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jakcu4rl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74B9C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 12:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774701293;
	bh=Hy7xlxhWO5ro+vQhkYEM/kAf+fZD0eQSU0Knhh1GU/8=;
	h=To:Subject:From:Date:From;
	b=Jakcu4rlCDWglvnFqfSn8AZ47uqb30U8p0CgY5IZZyhPxotbS+BoNeD373Szas6Bd
	 qTZisrvJF5zZslSuoGAj7F5jthfLkRNHMvkM4Cq2ROrH1YFFUH4V8G5DlKcwayTx5g
	 solNTVydBt9OofmNdrZanqSYG4DLy6S/ipe1yPLgboJALcMDicxxyIeUq9RU6DWcai
	 viOnVs2htsNBVL+0HCqHp7aa5cS4iFZcqzyrVGlsyajDXruRwnVXh/RLs8bxZMmOfB
	 OnOZyJcsiAQXZpxGKM6iuKjahMgJPap7bUMn7RPOyPiu0jqawAK7zi69W7dtGIcqFz
	 tB2+hkfAyflqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977A610F3DE2
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 12:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177470129358.3626.3526964339855615846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4430a06f94cd635f12300a7dac0a1ae9c50009694f010b32eb026e39208df7dc
Date: Sat, 28 Mar 2026 12:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774701293

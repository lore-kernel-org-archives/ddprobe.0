Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B04F1C6B4
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759506594; cv=none; b=oqeozPNCOqxkjTcYMmj0bcNC6hjR5g2ERsq0o85DcITeCT1KRkWBsbEa8BkH5S5SqxAhDCabJsGQ/hbLGoaqsjcSKTUIkRygQsuX3i/7pv3eWmH5nIexIrCUd3aWr8N3rmDsFWbcrBYxext55F+MdbpXs035k2iorPrDdKGm0W0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759506594; c=relaxed/simple;
	bh=a7OdoGN87KZ+ysLlceG+Owydo2BELmmVrV7YA6xxJXQ=;
	h=To:Subject:From:Message-Id:Date; b=kGk+IJPMXzEdvGxgFKzb6/tlxxTGJTRZV4R41lnAndJgZoVu6qoDVGbqZcZNLy8vYbxKOBG0kd+Qml1hc0Zq/BiJBf8g4S32vG0ie79kJfYhr0U4Ijae1XUQzgqdkiVJUyFbwTJWsSX+FXgtsIdYSfz6Qsz8s05+V/jJxHFCR10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I7dq2D+6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I7dq2D+6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E046C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759506593;
	bh=a7OdoGN87KZ+ysLlceG+Owydo2BELmmVrV7YA6xxJXQ=;
	h=To:Subject:From:Date:From;
	b=I7dq2D+63lUmblzTpx3WtmNTr7a6FO4FY4Msd8Dj/AlaqCOk3kTwBkKIu6u5iSDkx
	 bLHAdVe6M88GpgELn0zrnvFgLpGUG2w1WAIXESjkKGxUaRnrrzP9tdNAXq3Z5kiQkj
	 z8YBJuRsbovhKpoQfzjCUmKN4/zjC1t+6GXXyEn8r9jhBH89H5zODGyWN7EZh3YY1u
	 4HeaOpXcisgWzjQv31A5qi8xh7gY30kFEHP6BEjrZPogjK98f+86DKW6HN51UKPLoS
	 vPcWRYIguPd6EkJIOpxc0dC5PvzIJRONw1Bj8aFWOUWY0eLQ17pOrXWM3gpJ4LHe9u
	 1YO8SFkl07d5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DDDCCA471
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175950659358.8262.17873354635829419158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9542b408118dbaeb55dfa4fd7ce3d1645a277f810add411110dbee0c0986efd
Date: Fri, 03 Oct 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759506593
